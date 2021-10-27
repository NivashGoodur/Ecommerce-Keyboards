<?php

namespace App\Controller;

use App\Classe\Mail;
use App\Entity\User;
use App\Form\RegistrationType;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Security\Http\Authentication\AuthenticationUtils;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

class SecurityController extends AbstractController
{
    

    /**
     * @Route("/inscription", name="registration")
     */
    public function register(Request $request ,UserPasswordEncoderInterface $encoder)
    {

        $notification = null;
        $user = new User;
        $form = $this->createForm(RegistrationType::class);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            
            $user = $form->getData();
    
            $search_email = $entityManager->getRepository(User::class)->findOneByEmail($user->getEmail());


            if (!$search_email) {
                $encodedPassword = $encoder->encodePassword($user, $user->getPassword());
                $user->setPassword($encodedPassword);
               
                $entityManager->persist($user);
                $entityManager->flush();
               

                // Envoi d'un mail
                $mail = new Mail();
                $content = "Bonjour".$user->getFirstName()."<br> Bienvenue sur la première boutique dédiée au made in France. <br><br> Lorem ipsum, dolor sit amet consectetur adipisicing elit. A dolorem odio veniam quam assumenda!";
                $mail->send($user->getEmail(), $user->getFirstName(), 'Bienvenue sur La Boutique', $content);
                

                $notification = "Votre inscription s'est correctement déroulée. Vous pouvez dès à présent vous connecter à votre compte";

            }else {
                $notification = 'L\' email que vous avez renseigné existe déjà';
            }


        }


        return $this->render('security/register.html.twig', [
            'form' => $form->createView(),
            'notification' => $notification
        ]);
    }

    /**
     * @Route("/connexion", name="app_login")
     */
    public function login(AuthenticationUtils $authenticationUtils): Response
    {

        // get the login error if there is one
        $error = $authenticationUtils->getLastAuthenticationError();
        // last username entered by the user
        $lastUsername = $authenticationUtils->getLastUsername();

        return $this->render('security/login.html.twig', ['last_username' => $lastUsername, 'error' => $error]);
    }

    /**
     * @Route("/logout", name="app_logout")
     */
    public function logout(): void
    {
        
        throw new \LogicException('This method can be blank - it will be intercepted by the logout key on your firewall.');
    }
}
