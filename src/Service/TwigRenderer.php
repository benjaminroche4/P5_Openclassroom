<?php 

namespace App\Service;

use Twig_Environment;
use Twig_Loader_Filesystem;

/**
 * TwigRenderer
 */

class TwigRenderer
{
    private $twig;

    /**
     * Affichage de la vue demander.
     *
     * @param string $view  lien de la vue
     * @param array  $prams données envoyer dans la vue
     */

    public function render($view, $prams = [])
    {
        $loader = new \Twig\Loader\FilesystemLoader('view');
        $this->twig = new \Twig\Environment($loader, [
            'cache' => false, // __DIR__ . /tmp',
            'debug' => true,
        ]);
        $this->twig->addGlobal('session', $_SESSION);
          echo $this->twig->render($view.'.twig', $prams);
    }
}