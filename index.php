<?php
//On appel l'autoloading 
require 'vendor/autoload.php';

// Création de la session
session_start();

//On créé un objet $router
$router = new App\Router\Router($_GET['url']);


//Partie FRONT
$router->post('/post-:postId', "FrontEnd#commentAdd");
$router->get('/post-:id', "FrontEnd#post");
$router->get('/logout', "FrontEnd#logout");
$router->get('/', "FrontEnd#home");
$router->get('/home', "FrontEnd#home");
$router->post('/home', "FrontEnd#homePost");
$router->get('/blog', "FrontEnd#blog");
$router->get('/login', "FrontEnd#login");
$router->post('/login', "FrontEnd#loginPost");
$router->get('/register', "FrontEnd#register");
$router->post('/register', "FrontEnd#registerPost");
$router->get('/cv', "FrontEnd#cv");


//Partie BACK
$router->get('/admin', "BackEnd#admin");
$router->get('/adminDeleteComment-:idComment', "BackEnd#deleteComment");
$router->get('/adminAcceptComment-:idComment', "BackEnd#acceptComment");
$router->get('/adminDeleteBlogPost-:idBlog', "BackEnd#deleteBlogPost");
$router->get('/adminCreateBlogPost', "BackEnd#createBlogPost");
$router->post('/adminCreateBlogPost', "BackEnd#createBlogPostPost");
$router->get('/adminEditBlogPost-:idBlog', "BackEnd#editBlogPost");
$router->post('/adminEditBlogPost-:idBlog', "BackEnd#editBlogPostPost");

//On démarre l'appilaction
try
{
    $router->run();
}
catch (\App\Router\RouterException $e)
{
    header('Location: home');
}



