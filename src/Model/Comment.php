<?php
namespace App\Model;

use App\Service\DataBase;


/**
 * Gestion des commentaires.
 */

class Comment
{

    private $id;
    private $author_id;
    private $comment;
    private $date;
    private $blog_id;
    private $accept;

    /**
     * @return mixed
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * @param mixed $id
     * @return Comment
     */
    public function setId($id)
    {
        $this->id = $id;
        return $this;
    }

    /**
     * @return mixed
     */
    public function getAuthorId()
    {
        return $this->author_id;
    }

    /**
     * @param mixed $author_id
     * @return Comment
     */
    public function setAuthorId($author_id)
    {
        $this->author_id = $author_id;
        return $this;
    }

    /**
     * @return mixed
     */
    public function getComment()
    {
        return $this->comment;
    }

    /**
     * @param mixed $comment
     * @return Comment
     */
    public function setComment($comment)
    {
        $this->comment = $comment;
        return $this;
    }

    /**
     * @return mixed
     */
    public function getDate()
    {
        return $this->date;
    }

    /**
     * @param mixed $date
     * @return Comment
     */
    public function setDate($date)
    {
        $this->date = $date;
        return $this;
    }

    /**
     * @return mixed
     */
    public function getBlogId()
    {
        return $this->blog_id;
    }

    /**
     * @param mixed $blog_id
     * @return Comment
     */
    public function setBlogId($blog_id)
    {
        $this->blog_id = $blog_id;
        return $this;
    }

    /**
     * @return mixed
     */
    public function getAccept()
    {
        return $this->accept;
    }

    /**
     * @param mixed $accept
     * @return Comment
     */
    public function setAccept($accept)
    {
        $this->accept = $accept;
        return $this;
    }

}

