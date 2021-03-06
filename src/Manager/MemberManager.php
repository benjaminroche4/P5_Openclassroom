<?php
namespace App\Manager;

use App\Service\Database;

class MemberManager extends Database
{

    /**
     * Recupère l'utilisateur correspondant et le renvoit sous forme de tableau
     * associatif ou renvoit false si il n'existe pas
     * @param $username
     * @param $password
     * @return mixed
     */
    public function findByUsername($username){
        $stm = $this->getConnection()->prepare("SELECT * FROM members WHERE username = :USERNAME");
        $stm->bindValue('USERNAME', $username);
        $stm->execute();
        $username = $stm->fetch();

        return $username;
    }

    /**
     * Vérfie si le pseudo existe ou non.
     */
    public function userExist($username)
    {
        $stm = $this->getConnection()->prepare("SELECT * FROM members WHERE username = :username");
        $stm->bindParam(':username', $username);
        $stm->execute();
        $res = $stm->fetchColumn();

        if ($res > 0) {
            return true;
        }
        else {
            return false;
        }
    }

    /**
     * Vérfie si l'email existe déjà.
     */
    public function emailExist($email)
    {
        // Vérifie que l'email existe ou non.
        $stm = $this->getConnection()->prepare("SELECT * FROM members WHERE email = :email");
        $stm->bindParam(':email', $email);
        $stm->execute();
        $res = $stm->fetchColumn();

        if ($res > 0) {
            return true;
        }
        else {
            return false;
        }
    }

    /**
     * Insert un utilisateur dans la BDD.
     */
    public function userInsert($username, $email, $password)
    {
        $stm = $this->getConnection()->prepare("INSERT INTO members(username, email, password, date_add) 
        VALUES(:username, :email, :password, NOW())");
        $stm->bindParam('username', $username);
        $stm->bindParam('email', $email);
        $stm->bindParam('password', $password);
        $stm->execute();
    }
}