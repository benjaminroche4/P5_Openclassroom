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
     * Condition pour valider un BlogPost u
     */
    private function valideBlog($title, $content)
    {
        $titlelength = mb_strlen($title);
        $contentlength = mb_strlen($content);

        $erreurs = [];

        if(empty($title))
        {
            $erreurs[] = 'title_empty';
        }

        if(empty($content))
        {
            $erreurs[] = 'content_empty';
        }

        if($titlelength < 10 || $titlelength > 255)
        {
            $erreurs[] = 'title_length';
        }

        if($contentlength < 10)
        {
            $erreurs[] = 'content_length';
        }
        return $erreurs;
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
     * Affiche la page de modification d'un blog Post
     */
    public function editBlogPost($idBlog)
    {
        $this->secuirtyCheck();
        $blog = $this->blogPost->findOneById($idBlog);

        $this->renderer->render('edit-blog', ['blog'=>$blog]);
    }

    /**
     * Update un BlogPost
     */
    public function editBlogPostPost($idBlog)
    {
        $this->secuirtyCheck();

        $title = htmlspecialchars($_POST['title-blog']);
        $content = htmlspecialchars($_POST['content-blog']);

        $blog = $this->blogPost->findOneById($idBlog);

        $erreurs = $this->valideBlog($title, $content);

        // Renvoie au formulaire les erreurs.
        if(count($erreurs) > 0)
        {
            $this->renderer->render('edit-blog', ['erreurs' => $erreurs, 'blog'=>$blog]);
            return;
        }

        // Insertion dans la BDD
        $this->blogPost->update($idBlog, $title, $content);

        $blog = $this->blogPost->findOneById($idBlog);

        $this->renderer->render('edit-blog', ['msg' => 'Votre article à bien été modifié.', 'blog'=> $blog]);

    }

    /**
     * Affiche la page Création d'un blog Post
     */
    public function createBlogPost()
    {
        $this->secuirtyCheck();

        $this->renderer->render('create-blog');
    }

    /**
     * Gère la création d'un nouveau Blog Post
     */
    public function createBlogPostPost()
    {
        $this->secuirtyCheck();

        $title = htmlspecialchars($_POST['title-blog']);
        $content = htmlspecialchars($_POST['content-blog']);
        $user = $_SESSION['user'];

        $erreurs = $this->valideBlog($title, $content);

        // Renvoie au formulaire les erreurs.
        if(count($erreurs) > 0)
        {
            $this->renderer->render('create-blog', ['erreurs' => $erreurs]);
            return;
        }

        // Insertion dans la BDD
        $bloginsert = $this->blogPost->blogInsert($user['id'], $title, $content);
        $this->renderer->render('create-blog', ['msg' => 'Votre article à bien été publié.']);

    }

    /**
     * Affiche le panel admin + commentaires à valider + tous les BlogPosts
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
     * Supprime un BlogPost + les commentaires associés et redirige sur Admin
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