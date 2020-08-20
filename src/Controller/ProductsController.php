<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

use App\Repository\ProductRepository;

class ProductsController extends AbstractController
{
    /**
     * @Route("/")
     */
    public function homepage(ProductRepository $repo): Response
    {
        $bikes = $repo->findBy([]);

        return $this->render('homepage.html.twig', [
            'bikes' => $bikes
        ]);
    }

    /**
     * @Route("/products/{id}")
     */
    public function details($id, ProductRepository $repo): Response
    {
        $bike = $repo->find($id);

        if ($bike === null) {
            throw $this->createNotFoundException('The product does not exist');
        }

        return $this->render('details.html.twig', [
            'bike' => $bike
        ]);
    }
}
