<?php
    header("Access-Control-Allow-Origin: *");

    //$con = new PDO("mysql:host=localhost;port=3306;dbname=passaporte","root", "admin");
    $con = new PDO("mysql:host=localhost;port=3306;dbname=id3123018_passaporte",
        "id3123018_tadeuclasse", "@TadeuClasse28");

    $sql = "SELECT * FROM scores s order by s.pontos desc limit 10;";

    $rs = $con->prepare($sql);
    $rs->execute();

    $ds = $rs->fetchAll(PDO::FETCH_ASSOC);

    foreach($ds as $key => $value ){
        echo $value['nome'] . "|" . $value['pontos'] . "|";
    }