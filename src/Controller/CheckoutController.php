<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Session\SessionInterface;
use Symfony\Component\Routing\Annotation\Route;

use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;

use App\Entity\Order;
use App\Repository\ProductRepository;

class CheckoutController extends AbstractController
{
    /**
     * @Route("/checkout")
     */
    public function checkout(Request $request, ProductRepository $repo, SessionInterface $session): Response
    {
        $basket = $session->get('basket', []);
        $total = array_sum(array_map(function($product) { return $product->getPrice(); }, $basket));

        $order = new Order;

        $form = $this->createFormBuilder($order)
            ->add('name', TextType::class)
            ->add('email', TextType::class)
            ->add('address', TextareaType::class)
            ->add('save', SubmitType::class, ['label' => 'Confirm order'])
            ->getForm();

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $order = $form->getData();

            foreach ($basket as $product) {
                $order->getProducts()->add($repo->find($product->getId()));
            }

            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($order);
            $entityManager->flush();

            $session->set('basket', []);

            return $this->render('confirmation.html.twig');
        }

        return $this->render('checkout.html.twig', [
            'total' => $total,
            'form' => $form->createView()
        ]);
    }
}
