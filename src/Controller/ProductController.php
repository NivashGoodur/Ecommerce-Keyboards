<?php

namespace App\Controller;

use App\Classe\Search;
use App\Entity\Product;
use App\Form\SearchType;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class ProductController extends AbstractController
{
    /**
     * @Route("/nos-produits", name="products")
     */
    public function showProducts(Request $request): Response
    {

        $search = new Search();
        $form = $this->createForm(SearchType::class, $search);

        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()) {
            $products = $this->getDoctrine()->getManager()->getRepository(Product::class)->findWithSearch($search);
        }else{
            $repository = $this->getDoctrine()->getManager()->getRepository(Product::class);
            $products = $repository->findAll();
        }
        
        return $this->render('product/allProducts.html.twig', [
            'products' => $products,
            'form' => $form->createView()
        ]);
    }

    /**
     * @Route("produit/{slug}", name="product")
     */
    public function showProduct(Product $product)
    {

        $products = $this->getDoctrine()->getManager()->getRepository(Product::class)->findByIsBest(1);

        return $this->render('product/product.html.twig', [
            'product' => $product,
            'products' =>$products
        ]);
    }
}
