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


//On démarre l'appilaction 
$router->run();


