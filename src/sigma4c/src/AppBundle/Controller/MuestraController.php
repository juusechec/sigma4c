<?php

namespace AppBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use AppBundle\Entity\Muestra;
use AppBundle\Form\MuestraType;

/**
 * Muestra controller.
 *
 * @Route("/muestra")
 */
class MuestraController extends Controller
{
    /**
     * Lists all Muestra entities.
     *
     * @Route("/", name="muestra_index")
     * @Method("GET")
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $muestras = $em->getRepository('AppBundle:Muestra')->findAll();

        return $this->render('muestra/index.html.twig', array(
            'muestras' => $muestras,
        ));
    }

    /**
     * Creates a new Muestra entity.
     *
     * @Route("/new", name="muestra_new")
     * @Method({"GET", "POST"})
     */
    public function newAction(Request $request)
    {
        $muestra = new Muestra();
        $form = $this->createForm('AppBundle\Form\MuestraType', $muestra);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($muestra);
            $em->flush();

            return $this->redirectToRoute('muestra_show', array('id' => $muestra->getId()));
        }

        return $this->render('muestra/new.html.twig', array(
            'muestra' => $muestra,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a Muestra entity.
     *
     * @Route("/{id}", name="muestra_show")
     * @Method("GET")
     */
    public function showAction(Muestra $muestra)
    {
        $deleteForm = $this->createDeleteForm($muestra);

        return $this->render('muestra/show.html.twig', array(
            'muestra' => $muestra,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing Muestra entity.
     *
     * @Route("/{id}/edit", name="muestra_edit")
     * @Method({"GET", "POST"})
     */
    public function editAction(Request $request, Muestra $muestra)
    {
        $deleteForm = $this->createDeleteForm($muestra);
        $editForm = $this->createForm('AppBundle\Form\MuestraType', $muestra);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($muestra);
            $em->flush();

            return $this->redirectToRoute('muestra_edit', array('id' => $muestra->getId()));
        }

        return $this->render('muestra/edit.html.twig', array(
            'muestra' => $muestra,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a Muestra entity.
     *
     * @Route("/{id}", name="muestra_delete")
     * @Method("DELETE")
     */
    public function deleteAction(Request $request, Muestra $muestra)
    {
        $form = $this->createDeleteForm($muestra);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($muestra);
            $em->flush();
        }

        return $this->redirectToRoute('muestra_index');
    }

    /**
     * Creates a form to delete a Muestra entity.
     *
     * @param Muestra $muestra The Muestra entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Muestra $muestra)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('muestra_delete', array('id' => $muestra->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}