<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Session\SessionInterface;
use Symfony\Component\Routing\Annotation\Route;

class BasketController extends AbstractController
{
    /**
     * @Route("/basket")
     */
    public function basket(Request $request, SessionInterface $session): Response
    {
        $basket = $session->get('basket', []);

        if ($request->isMethod('POST')) {
            unset($basket[$request->request->get('id')]);
            $session->set('basket', $basket);
        }

        $total = array_sum(array_map(function($product) { return $product->getPrice(); }, $basket));

        return $this->render('basket.html.twig', [
            'basket' => $basket,
            'total' => $total
        ]);
    }
}
