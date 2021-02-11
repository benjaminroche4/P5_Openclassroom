<?php
namespace App\Model;

use App\Service\DataBase;
use http\Exception\InvalidArgumentException;

/**
 * Récupération des BlogPosts.
 */

class BlogPost extends DataBase 
{

    public function findOneById($id)
    {
        $sql = 'SELECT blogpost.*, members.username username FROM blogpost JOIN members ON blogpost.author_id = members.id WHERE blogpost.id = :ID';
        $blogpost = $this->selectFetch($sql,['ID'=>$id]);
        return $blogpost;
    }

	/**
	 * Récupération des 3 derniers BlogPosts pour la page Home.
	 */
	public function LastBlogPost()
	{
		$sql = 'SELECT blogpost.*, members.username as author FROM blogpost INNER JOIN members on blogpost.author_id = members.id ORDER BY id DESC LIMIT 3';
        $result = $this->sql($sql);
        return $result;
	}

	/**
	 * Récupération de tous les BlogPosts pour la page Blog.
	 */
	public function AllBlogPost()
	{
		$sql = 'SELECT blogpost.*, members.username as author FROM blogpost INNER JOIN members on blogpost.author_id = members.id ORDER BY id DESC';
        $result = $this->sql($sql);
        return $result;
	}

	/**
	 * Récupération du dernier id de la table BlogPost pour la page Blog.
	 */
	public function LastId()
	{
		$sql = 'SELECT id FROM blogpost ORDER BY id DESC LIMIT 1';
        $result = $this->sql($sql);
        return $result;
	}
	

}

