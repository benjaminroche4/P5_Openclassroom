<?php
namespace App\Controller;

use App\Model\BlogPost;
use App\Model\Comment;
use App\Service\TwigRenderer;
use App\Model\Member;

/**
 * FrontendController est le controller de la partie publique du Blog.
 */

class FrontEndController
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
     * Ajout d'un commentaire dans la BDD
     */
    public function commentAdd($postId)
    {
        //validation
        $comment = $_POST['comment'];
        $user = $_SESSION['user'];

        if( strlen($comment) < 10 )
        {
            //charge le post
            $blogpost = new BlogPost();
            $post = $blogpost->findOneById($postId);

            // Charge les commentaires
            $comments = $this->comment->findAllAcceptedByBlogId($postId);

            //affiche la vue
            $this->renderer->render('post', ['post' => $post, 'erreur'=>'Votre message 
            doit compoter au moins 10 caractères.',
                'comments'=> $comments]);
            return;
        }

        // Données valide on continue

        //Insertion
        $model = new Comment();
        $model->insert($postId,$user['id'],$comment);

        // Charge les commentaires
        $comments = $this->comment->findAllAcceptedByBlogId($postId);
        //charge le post
        $blogpost = new BlogPost();
        $post = $blogpost->findOneById($postId);
        //affiche la vue
        $this->renderer->render('post', ['post' => $post, 'msg'=>'Votre message a été soumis à vérification.',
            'comments'=> $comments]);

    }

    /**
     * Affiche le post (article) + commentaires
     */
    public function post($id)
    {
        //Charge le post
        $blogpost = new BlogPost();
        $post = $blogpost->findOneById($id);

        // Charge les commentaires
        $comments = $this->comment->findAllAcceptedByBlogId($id);

        //Affiche la vue
        $this->renderer->render('post', ['post' => $post, 'comments'=>$comments]);
    }

    /**
     * Deconnexion
     */
    public function logout()
    {
        session_destroy();

       header('Location:home');
    }

	/**
	 * Affiche la page d'accueil
	 */
	public function home()
	{
		$lastblog = $this->blogPost->LastBlogPost();

		$this->renderer->render('home', ['lastblog' => $lastblog]);
	}

    /**
     * Formulaire de contact page d'accueil (envois par mail)
     */
    public function homePost()
    {
        $lastblog = $this->blogPost->LastBlogPost();

        $name = htmlspecialchars($_POST['cname']);
        $email = htmlspecialchars($_POST['cemail']);
        $message = htmlspecialchars($_POST['cmessage']);

        $erreurs = [];

        if(empty($name))
        {
            $erreurs[] = 'name_empty';
        }

        if(empty($email))
        {
            $erreurs[] = 'email_empty';
        }

        if(empty($message))
        {
            $erreurs[] = 'message_empty';
        }

        // Renvoie au formulaire les erreurs.
        if(count($erreurs) > 0)
        {
            $this->renderer->render('home', ['erreurs' => $erreurs, 'lastblog' => $lastblog]);
            return;
        }

        $header="MIME-Version: 1.0\r\n";
        $header.='From:"Photo1"<photo1@gmail.com>'."\n";
        $header.='Content-Type:text/html; charset="uft-8"'."\n";
        $header.='Content-Transfer-Encoding: 8bit';

        $message='
		<html>
			<body>
				<div>
					<p style="font-weight: bold; font-size: 15px;">Demande de contact du site internet :</p>
					<br />
					<u>Nom de l\'expéditeur :</u> '.$_POST['cname'].'<br />
					<u>Mail de l\'expéditeur :</u> '.$_POST['cemail'].'<br />
					<br />
					<u>Message :</u><br />'.nl2br($_POST['cmessage']).'
				</div>
			</body>
		</html>
		';

        mail("benjamin.annexe@gmail.com", "Contact du site internet", $message, $header);

        $this->renderer->render('home', ['msg' => 'Votre message à bien été envoyé. 
        Nous vous contacterons dans les plus brefs délais.',  'lastblog' => $lastblog]);

    }

	/**
	 * Liste l'ensemble des BlogPosts sur la page Blog
	 */	
	public function blog()
	{
		$allblogpost = $this->blogPost->AllBlogPost();
		$this->renderer->render('blog', ['allblogpost' => $allblogpost]);
	}

    /**
     * Affiche la page de connexion
     */
    public function login()
    {
        $this->renderer->render('login');
    }

    /**
     * Gère le formulaire de connexion
     */
    public function loginPost()
    {

        // Récupération Pseudo/MDP
        $username = htmlspecialchars($_POST['lusername']);
        $password = $_POST['lpassword'];


        // Appel le model vérifs
        $user = $this->member->findByUsername($username);

        // Si erreur alors msg et quitte
        if($user == false || !password_verify($password, $user['password'])){
            $this->renderer->render('login', ['msg' => 'Pseudo ou mot de passe inccoret.']);
            return;
        }

        // Place l'utilisateur session
        $_SESSION['user'] = $user;

        // Redirige l'utilisateur
        header('Location: home');

    }

	/**
	 * Affiche la page d'inscription
	 */
	public function register()
	{
		$this->renderer->render('register');
	}

	/**
	 * Gère l'inscription d'un utilisateur
	 */
	public function registerPost()
	{
		$username = htmlspecialchars($_POST['rusername']);
		$email = htmlspecialchars($_POST['remail']);
		$password = $_POST['rpassword'];
		$password2 = $_POST['rpassword-confirm'];

		$usernamelength = mb_strlen($username);

		$userexist = $this->member->userExist($username);
		$emailexist = $this->member->emailExist($email);


		$erreurs = [];

		if(empty($username))
		{
			$erreurs[] = 'user_empty';
		}
				
		if(empty($email))
		{
			$erreurs[] = 'email_empty';
		}

        if(empty($password))
		{
			$erreurs[] = 'password_empty';
		}

        if(empty($password2))
        {
            $erreurs[] = 'password2_empty';
        }

		if($userexist)
		{
			$erreurs[] = 'user_exist';
		}

		if($emailexist)
		{
			$erreurs[] = 'email_exist';
		}

		if($password != $password2)
		{
			$erreurs[] = 'password_dont_match';
		}

        if($usernamelength < 3 || $usernamelength > 60)
        {
            $erreurs[] = 'user_length';
        }

        // Renvoie au formulaire les erreurs.
		if(count($erreurs) > 0)
		{
			$this->renderer->render('register', ['erreurs' => $erreurs]);
			return;
		}

		// Si pas d'erreurs on continue

        // Crypte le MDP
        $password = password_hash( $password, PASSWORD_DEFAULT );

        // Insertion dans la BDD
        $userinsert = $this->member->userInsert($username, $email, $password);
        $this->renderer->render('register', ['msg' => 'Félicitation ! Votre compte à bien été crée, 
        vous pouvez à présent vous connecter.']);

	}

}


