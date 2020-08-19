<?php

namespace App\Controller;

use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class FirstController
{
    /**
     * @Route("/first")
     */
    public function homepage(): Response
    {
        return new Response(
            '<html><body><h1>Welcome!</h1></body></html>'
        );
    }
}
