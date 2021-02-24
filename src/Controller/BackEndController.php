<?php
namespace App\Controller;

use App\Manager\BlogPostManager;
use App\Manager\CommentManager;
use App\Manager\MemberManager;
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
    private $blogPostManager;
    private $memberManager;
    private $commentManager;

    public function __construct()
    {
        $this->renderer = new TwigRenderer();
        $this->blogPostManager = new BlogPostManager();
        $this->memberManager = new MemberManager();
        $this->commentManager = new CommentManager();
    }

    /**
     * Condition pour valider un BlogPost
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
        $blog = $this->blogPostManager->findOneById($idBlog);

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

        $blog = $this->blogPostManager->findOneById($idBlog);

        $erreurs = $this->valideBlog($title, $content);

        // Renvoie au formulaire les erreurs.
        if(count($erreurs) > 0)
        {
            $this->renderer->render('edit-blog', ['erreurs' => $erreurs, 'blog'=>$blog]);
            return;
        }

        // Insertion dans la BDD
        $this->blogPostManager->update($idBlog, $title, $content);

        $blog = $this->blogPostManager->findOneById($idBlog);

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
        $this->blogPostManager->blogInsert($user['id'], $title, $content);

        $this->renderer->render('create-blog', ['msg' => 'Votre article à bien été publié.']);

    }

    /**
     * Affiche le panel admin + commentaires à valider + tous les BlogPosts
     */
    public function admin()
    {
        $this->secuirtyCheck();

        $allblogpost = $this->blogPostManager->AllBlogPost();

        $comments = $this->commentManager->findAllNotAccepted();

        $this->renderer->render('admin', ['allblogpost' => $allblogpost, 'comments'=>$comments]);
    }

    /**
     * Supprime le commentaire et redirige sur Admin
     */
    public function deleteComment($idComment)
    {
        $this->secuirtyCheck();

        //suprresion
        $this->commentManager->delete($idComment);

        //redirection vers admin
        header('Location:admin');
    }

    /**
     * Accepte le commentaire et redirige sur Admin
     * @param $idComment
     */
    public function acceptComment($idComment)
    {
        $this->secuirtyCheck();

        //accept
        $this->commentManager->accept($idComment);

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
        $this->commentManager->deleteByBlogId($idBlog);
        $this->blogPostManager->delete($idBlog);

        //redirection vers admin
        header('Location:admin');
    }

}