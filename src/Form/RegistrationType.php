<?php

namespace App\Form;

use App\Entity\User;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\BirthdayType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\PasswordType;
use Symfony\Component\Validator\Constraints\Length;

class RegistrationType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('email', EmailType::class)
            ->add('password', PasswordType::class, [
                'label' => 'Mot de passe'
            ])
            ->add('lastName', TextType::class, [
                'label'=> 'Nom',
                'constraints' => new Length([
                    'min'=>'2',
                    'max'=>'40',
                    'minMessage'=>'Le nom doit contenir au minimum {{ limit }} caractères',
                    'maxMessage'=>'Le Nom doit contenir au maximum {{ limit }} caractères',
                ])
            ])
            ->add('firstName', TextType::class, [
                'label'=> 'Prénom'
            ])
            ->add('address', TextType::class, [
                'label'=> 'Votre adresse'
            ])
            ->add('birthDate',BirthdayType::class, [
                'label'=> 'Votre date de naissance'
            ])
            ->add('company',TextType::class, [
                'label' => 'Votre société',
                'required'   => false,
                'attr' =>[
                'placeholder' => 'Optionnel',
                ]
            ])

            ->add('save', SubmitType::class, [
                'label'=> 'Créer mon compte'
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
