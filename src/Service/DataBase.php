<?php
namespace App\Service;

/**
 * Connexion à la base de données.
 */

abstract class Database
{
    const DB_HOST = 'mysql:host=localhost;dbname=blog;charset=utf8';
    const DB_USER = 'root';
    const DB_PASS = 'root';

    private $connection;

    public function selectFetchAsObject($sql, $parameters = [], $class)
    {
        $pdo = $this->getConnection();
        $stm = $pdo->prepare($sql);
        $stm->execute($parameters);

        return $stm->fetchObject($class);
    }

    public function selectFetchAllAsObjects($sql, $parameters = [], $class)
    {
        $pdo = $this->getConnection();
        $stm = $pdo->prepare($sql);
        $stm->execute($parameters);

        return $stm->fetchAll(\PDO::FETCH_CLASS, $class);
    }

    private function checkConnection()
    {
        if ($this->connection === null) {
            return $this->getConnection();
        }

        return $this->connection;
    }

    protected function getConnection()
    {
        try {
            $this->connection = new \PDO(self::DB_HOST, self::DB_USER, self::DB_PASS);
            $this->connection->setAttribute(\PDO::ATTR_ERRMODE, \PDO::ERRMODE_EXCEPTION);

            return $this->connection;
        } catch (\Exception $e) {
            $errorConnection = $e->getMessage();
            $_SESSION['errorMessage'] = $errorConnection;
            header('HTTP/1.1 404 Not Found');
            header('Location: /404');
        }
    }

    protected function sql($sql, $parameters = null, $bind = null)
    {
        if ($parameters || $bind) {
            $result = $this->getConnection()->prepare($sql);

            if ($bind) {
                foreach ($bind as $bindnew) {
                    $result->bindParam($bindnew[0], $bindnew[1], $bindnew[2]);
                }
                $result->execute();
            } else {
                $result->execute($parameters);
            }

            return $result;
        } else {
            $result = $this->getConnection()->query($sql);

            return $result;
        }
    }
}