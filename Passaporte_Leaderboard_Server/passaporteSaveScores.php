<?php
/**
 * Created by PhpStorm.
 * User: tadeu
 * Date: 24/07/2018
 * Time: 14:50
 */

    header("Access-Control-Allow-Origin: *");

    //$con = new PDO("mysql:host=localhost;port=3306;dbname=passaporte",
//        "root", "admin");
    $con = new PDO("mysql:host=localhost;port=3306;dbname=id3123018_passaporte",
    "id3123018_tadeuclasse", "@TadeuClasse28");

    if(isset($_GET['nome']) && isset($_GET['pontos'])){

        $sql = "INSERT INTO scores
				(nome,
				pontos)
				VALUES
				(:nome,
				:pontos);";

        $rs = $con->prepare($sql);
        $rs->bindValue(":nome", $_GET['nome']);
        $rs->bindValue(":pontos", $_GET['pontos']);

        $result = $rs->execute();

        var_dump($result);

        if($sql){
            echo 'Sua pontuação foi salva com sucesso!';

        }else{

            echo 'Houve um erro ao enviar sua pontuação. Tente novamente mais tarde.';
        }

    }else{
        echo  ('Nome e pontuação não foram enviadas.');
    }
