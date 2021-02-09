<?php
namespace App\Controller;

use App\Model\BlogPost;
use App\Service\TwigRenderer;
use App\Model\Member;

/**
 * BackEndController est le controller de la partie publique du Blog.
 */

class BackEndController
{
    private $renderer;
    private $blogPost;
    private $member;

    public function __construct()
    {
        $this->renderer = new TwigRenderer();
        $this->blogPost = new BlogPost();
        $this->member = new Member();
    }

    /**
     * Admin
     */
    public function admin()
    {
        $allblogpost = $this->blogPost->AllBlogPost();
        $this->renderer->render('admin', ['allblogpost' => $allblogpost]);
    }



}