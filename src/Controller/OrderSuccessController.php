<?php

namespace App\Controller;

use App\Classe\Cart;
use App\Classe\Mail;
use App\Entity\Order;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class OrderSuccessController extends AbstractController
{

    private $entityManager;

    public function __construct(EntityManagerInterface $entityManager)
    {
        $this->entityManager = $entityManager;
    }

    /**
     * @Route("/commande/merci/{stripeSessionId}", name="order_validate")
     */
    public function index(Cart $cart, $stripeSessionId)
    {

        $order = $this->entityManager->getRepository(Order::class)->findOneByStripeSessionId($stripeSessionId);

        if(!$order || $order->getUser() != $this->getUser()) {
            return $this->redirectToRoute('home');
        }

        if ($order->getState() == 0) {
            // Vider la session Cart
            $cart->remove();
            // Modifier le statut isPaid de notre commande en mettant 1
            $order->setState(1);
            $this->entityManager->flush();
        }

        
        // Envoyer un email à notre client pour lui confirmer sa commande
        // Envoi d'un mail
        $mail = new Mail();
        $content = "Bonjour ".$order->getUser()->getFirstName()."<br> Merci de votre commande.<br><br> Lorem ipsum, dolor sit amet consectetur adipisicing elit. A dolorem odio veniam quam assumenda!";
        $mail->send($order->getUser()->getEmail(), $order->getUser()->getFirstName(), 'Votre commande sur La Boutique est bien validée', $content);

        return $this->render('order_success/index.html.twig', [
            'order' => $order,
        ]);
    }
}
