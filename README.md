"# Ecommerce Keyboards" 
# Site ecommerce sous Symfony 5

## Contexte
Site ecommerce de vente de différents types de claviers pour pc.

## Déroulé du projet

- Gestion des utilisateurs et des rôles avec Symfony Security Component (Page de login + Inscription, Rôle admin et utilisateur).
- CRUD des articles, user (pour les admins) avec le Bundle EasyAdmin.
- Affichage des articles paginés avec Knp Paginator et d'un article.
   (pour les visiteurs et les personnes inscrites, ne pas afficher les articles premium aux personnes n'ayant pas payé)
- Fonctionnement du panier
- Gestion des adresses utilisateurs
- Gestion des commandes avec suivi côté utilisateur
- Ajout du tunnel d'achat avec Stripe.
- Gestion de l'envoi des emails avec Mailjet

## Technologies utilisées
Symfony 5, Bootstrap, Stripe, Mailjet, Fixtures Faker, Twig, SQL.
