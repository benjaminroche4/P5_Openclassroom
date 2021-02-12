<?php
namespace App\Model;

use App\Service\DataBase;


/**
 * Gestion des commentaires
 */

class Comment extends DataBase
{
    public function findAllAcceptedByBlogId($blogId)
    {
        $sql = "
        SELECT  comment.id, members.username, comment.date, comment.comment, comment.accept   
        FROM    comment
                JOIN members ON comment.author_id = members.id 
        WHERE   comment.accept = true AND comment.blog_id = :BLOGID";

        return $this->selectFetchAll($sql, ['BLOGID'=> $blogId]);
    }

    public function findAllNotAccepted()
    {
        $sql = "
        SELECT  comment.id, members.username, comment.date, comment.comment, comment.accept   
        FROM    comment
                JOIN members ON comment.author_id = members.id 
        WHERE   comment.accept = false ";

        return $this->selectFetchAll($sql,[]);
    }

    public function findAllByBlogId($blogId)
    {
        $sql = "
        SELECT  comment.id, members.username, comment.date, comment.comment, comment.accept   
        FROM    comment
                JOIN members ON comment.author_id = members.id 
        WHERE   comment.blog_id = :BLOGID ";

        return $this->selectFetchAll($sql, ['BLOGID'=>$blogId]);
    }

    public function accept($commentId)
    {
        $sql = "UPDATE comment SET accept = true WHERE id = :COMMENTID";
        $this->sql($sql, ['COMMENTID'=> $commentId]);
    }

    public function delete($commentId)
    {
        $sql = "DELETE FROM comment WHERE id = :COMMENTID";
        $this->sql($sql, ['COMMENTID'=> $commentId]);
    }

    public function deleteByBlogId($blogId)
    {
        $sql = "DELETE FROM comment WHERE blog_id = :BLOGID";
        $this->sql($sql, ['BLOGID'=> $blogId]);
    }

    public function insert($blogId, $authorId, $comment)
    {
        $sql = "INSERT INTO comment(author_id, comment, blog_id, accept) VALUES (:AUTHORID, :COMMENT, :BLOGID, false)";
        $this->sql($sql, ['AUTHORID'=>$authorId, 'COMMENT'=>$comment, 'BLOGID'=>$blogId]);
    }


}

