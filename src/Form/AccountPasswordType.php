<?php

namespace App\Form;

use App\Entity\User;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Validator\Constraints\Length;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\BirthdayType;
use Symfony\Component\Form\Extension\Core\Type\PasswordType;

class AccountPasswordType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
        ->add('email', EmailType::class, [
            'disabled' => true,
        ])
        ->add('lastName', TextType::class, [
            'disabled' => true,
            'label'=> 'Nom',
            'constraints' => new Length([
                'min'=>'2',
                'max'=>'40',
                'minMessage'=>'Le nom doit contenir au minimum {{ limit }} caractères',
                'maxMessage'=>'Le Nom doit contenir au maximum {{ limit }} caractères',
            ])
        ])
        ->add('firstName', TextType::class, [
            'disabled' => true,
            'label'=> 'Prénom'
        ])
        ->add('address', TextType::class, [
            'disabled' => true,
            'label'=> 'Votre adresse'
        ])
        ->add('birthDate',BirthdayType::class, [
            'disabled' => true,
            'label'=> 'Votre date de naissance'
        ])
        ->add('company',TextType::class, [
            'disabled' => true,
            'label' => 'Votre société',
            'required'   => false,
        ])
        ->add('old_password', PasswordType::class, [
            'mapped' => false,
            'label' => 'Mon mot de passe actuel',
        ])
        ->add('new_password', PasswordType::class, [
            'mapped' => false,
            'label' => 'Mon nouveau mot de passe'
        ])

        ->add('save', SubmitType::class, [
            'label' => 'Modifier',
        ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => User::class,
        ]);
    }
}
