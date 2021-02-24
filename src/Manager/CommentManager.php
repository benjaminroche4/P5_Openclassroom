<?php
namespace App\Manager;

use App\Model\BlogPost;
use App\Model\Comment;
use App\Service\Database;

class CommentManager extends Database
{
    /**
     * Affiche les commentaires si la valeur est : true.
     */
    public function findAllAcceptedByBlogId($blogId)
    {
        $sql = "
        SELECT  comment.id, members.username, comment.date, comment.comment, comment.accept   
        FROM    comment
                JOIN members ON comment.author_id = members.id 
        WHERE   comment.accept = true AND comment.blog_id = :BLOGID";

        return  $this->selectFetchAllAsObjects($sql, ['BLOGID'=> $blogId], BlogPost::class);
    }

    /**
     * Affiche les commentaires si la valeur est : false.
     */
    public function findAllNotAccepted()
    {
        $sql = "
        SELECT  comment.id, members.username, comment.date, comment.comment, comment.accept   
        FROM    comment
                JOIN members ON comment.author_id = members.id 
        WHERE   comment.accept = false ";

        return $this->selectFetchAllAsObjects($sql, [],Comment::class);
    }

    /**
     * Acceptation d'un commentaire.
     */
    public function accept($commentId)
    {
        $sql = "UPDATE comment SET accept = true WHERE id = :COMMENTID";
        $this->sql($sql, ['COMMENTID'=> $commentId]);
    }

    /**
     * Suppresion d'un commentaire (via panel admin).
     */
    public function delete($commentId)
    {
        $sql = "DELETE FROM comment WHERE id = :COMMENTID";
        $this->sql($sql, ['COMMENTID'=> $commentId]);
    }

    /**
     * Suppresion des commentaires par un BlogId (via panel admin).
     */
    public function deleteByBlogId($blogId)
    {
        $sql = "DELETE FROM comment WHERE blog_id = :BLOGID";
        $this->sql($sql, ['BLOGID'=> $blogId]);
    }

    /**
     * Insert un commentaire dans la BDD.
     */
    public function insert($blogId, $authorId, $comment)
    {
        $sql = "INSERT INTO comment(author_id, comment, blog_id, accept) VALUES (:AUTHORID, :COMMENT, :BLOGID, false)";
        $this->sql($sql, ['AUTHORID'=>$authorId, 'COMMENT'=>$comment, 'BLOGID'=>$blogId]);
    }

}