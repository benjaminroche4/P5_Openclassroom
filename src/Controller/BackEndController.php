<?php
namespace App\Controller;

use App\Model\BlogPost;
use App\Model\Comment;
use App\Service\TwigRenderer;
use App\Model\Member;

/**
 * BackEndController est le controller de la partie privé du Blog.
 */

class BackEndController
{
    private $renderer;
    private $blogPost;
    private $member;
    private $comment;

    public function __construct()
    {
        $this->renderer = new TwigRenderer();
        $this->blogPost = new BlogPost();
        $this->member = new Member();
        $this->comment = new Comment();
    }

    /**
     * Sécurisation espace Admin
     */
    private function secuirtyCheck()
    {
        $user = $_SESSION['user'];

        if( $user['role'] != 'ADMIN')
        {
            header('Location:home');
            exit();
        }
    }


    /**
     * Admin
     */
    public function admin()
    {
        $this->secuirtyCheck();

        $allblogpost = $this->blogPost->AllBlogPost();

        $comments = $this->comment->findAllNotAccepted();

        $this->renderer->render('admin', ['allblogpost' => $allblogpost, 'comments'=>$comments]);
    }

    /**
     * Supprime le commentaire et redirige sur Admin
     */
    public function deleteComment($idComment)
    {
        $this->secuirtyCheck();

        //suprresion
        $this->comment->delete($idComment);

        //redirection vers admin
        header('Location:admin');
    }

    /**
     * Accepte le commentaire et redirige sur Admin
     */
    public function acceptComment($idComment)
    {
        $this->secuirtyCheck();

        //accept
        $this->comment->accept($idComment);

        //redirection
        header('Location:admin');
    }

    /**
     * Supprime un BlogPost et redirige sur Admin
     */
    public function deleteBlogPost($idBlog)
    {
        $this->secuirtyCheck();

        //suprresion
        $this->comment->deleteByBlogId($idBlog);
        $this->blogPost->delete($idBlog);

        //redirection vers admin
        header('Location:admin');
    }


}