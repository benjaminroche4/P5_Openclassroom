<?php
namespace App\Model;

use App\Service\DataBase;
use http\Exception\InvalidArgumentException;

/**
 * Gestion des BlogPosts.
 */

class BlogPost extends DataBase 
{
    /**
     * Modifie un BlogPost (update)
     */
    public function update($id, $title, $content)
    {
        $stm = $this->getConnection()->prepare("UPDATE blogpost SET title = :TITLE, content = :CONTENT 
        WHERE id = :ID");
        $stm->bindParam('ID', $id);
        $stm->bindParam('TITLE', $title);
        $stm->bindParam('CONTENT', $content);
        $stm->execute();
    }

    /**
     * Insert un BlogPost dans la BDD.
     */
    public function blogInsert($authorId, $title, $content)
    {
        // Insert le BlogPost dans la base de données.
        $stm = $this->getConnection()->prepare("INSERT INTO blogpost(author_id, title, content) 
        VALUES(:AUTHORID, :TITLE, :CONTENT)");
        $stm->bindParam('AUTHORID', $authorId);
        $stm->bindParam('TITLE', $title);
        $stm->bindParam('CONTENT', $content);
        $stm->execute();
    }

    /**
     * Récupère un BlogPost par rapport à son Id.
     */
    public function findOneById($id)
    {
        $sql = 'SELECT blogpost.*, members.username username FROM blogpost JOIN members ON blogpost.author_id = members.id WHERE blogpost.id = :ID';
        $blogpost = $this->selectFetch($sql,['ID'=>$id]);
        return $blogpost;
    }

	/**
	 * Récupération des 3 derniers BlogPosts pour la page d'accueil.
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
     * Supprime un blogPost dans la partie Admin
     */
    public function delete($blogId)
    {
        $sql = "DELETE FROM blogpost WHERE id = :BLOGID";
        $this->sql($sql, ['BLOGID'=> $blogId]);
    }

}


// crée la route (get)
// recuperation blog post
// envoi le post à la vue
// remplissage des champs (value)


