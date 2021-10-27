<?php

namespace App\Controller;

use App\Form\AccountPasswordType;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

class AccountController extends AbstractController
{
    /**
     * @Route("/compte", name="account")
     */
    public function account(): Response
    {

        if (!$this->getUser()) {
            return $this->redirectToRoute('app_login'); 
        }

        $user = $this->getUser();

        return $this->render('account/account.html.twig', [
            'user' => $user,
        ]);
    }


    /**
     * @Route("/compte/modifier-mon-mot-de-passe" , name="account_password")
     */
    public function changePassword(Request $request, UserPasswordEncoderInterface $encoder)
    {
        $notification= null;

        

        $user = $this->getUser();
        $form = $this->createForm(AccountPasswordType::class, $user);
        $form->handleRequest($request);
        if($form->isSubmitted() && $form->isValid()){

            $old_pwd = $form->get('old_password')->getData();

            if ($encoder->isPasswordValid($user, $old_pwd)){
                
                $new_pwd = $form->get('new_password')->getData();
                $newEncodedPassword = $encoder->encodePassword($user, $new_pwd);
                $user->setPassword($newEncodedPassword);
                
                $entityManager = $this->getDoctrine()->getManager();
                $entityManager->flush();

                $notification = 'Votre mot de passe a bien été mis à jour';
                
            }else{
                $notification = 'Votre mot de passe actuel est incorrect';
            }
        }



        return $this->render('account/accountPassword.html.twig', [
            'form' => $form->createView(),
            'notification' => $notification,
        ]);
    }
}
