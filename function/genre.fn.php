<?php
// requête SQL qui joint les tables medoc et genre sur la colonne genre_id et 
// filtre les résultats pour ne sélectionner que les entrées ayant le genre 'Chocolat'.
function getChocolats() {
    $sql = "SELECT m.*
            FROM medoc m
            JOIN genre g ON m.genre_id = g.idgenre
            WHERE g.genre = 'Chocolat'";
            $result = $conn->query($sql);
            if ($result->num_rows > 0) {
                $chocolats = array();
                while($row = $result->fetch_assoc()) {
                                $chocolats[] = $row; }
                                        }
                        }

// requête SQL qui joint les tables medoc et genre sur la colonne genre_id et 
// filtre les résultats pour ne sélectionner que les entrées ayant le genre 'bonbon'.
function getBonbon() {
    $sql = "SELECT m.*
            FROM medoc m
            JOIN genre g ON m.genre_id = g.idgenre
            WHERE g.genre = 'bonbon'";
            $result = $conn->query($sql);
            if ($result->num_rows > 0) {
                $bonbon = array();
                while($row = $result->fetch_assoc()) {
                                $bonbon[] = $row; }
                                        }
                        }
// requête SQL qui joint les tables medoc et genre sur la colonne genre_id et 
// filtre les résultats pour ne sélectionner que les entrées ayant le genre 'sirop'.
function getSirop() {
    $sql = "SELECT m.*
            FROM medoc m
            JOIN genre g ON m.genre_id = g.idgenre
            WHERE g.genre = 'Sirop'";
            $result = $conn->query($sql);
            if ($result->num_rows > 0) {
                $sirop = array();
                while($row = $result->fetch_assoc()) {
                                $Sirop[] = $row; }
                                        }
                        }
?>