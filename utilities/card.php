<?php
require_once 'function/db.fn.php'; //Inclut le fichier contenant la fonction de connexion à la base de données.
// require_once garantit que le fichier est inclus une seule fois pour éviter les doublons.
include "config/config.php"; // Inclusion du fichier de configuration

$connection = getPDOlink($config); // Appelle la fonction getPDOlink() du fichier db.fn.php pour établir une connexion à la base de données en utilisant les paramètres de configuration passés en argument.

// Requête SQL pour sélectionner tous les médicaments
$sql = "SELECT * FROM medoc";
$result = $connection->query($sql); // Exécute la requête SQL et stocke le résultat dans la variable $result

?>

<main>
    <section class="container">
        <div class="row">
            <?php
            if ($result !== false && $result->rowCount() > 0) {
                while ($row = $result->fetch(PDO::FETCH_ASSOC)) {
                    // Vérifie si la requête a renvoyé des résultats ($result !== false) et s'il y a au moins une ligne de résultat ($result->rowCount() > 0).
            ?>
                    <div class="col-md-4 mb-4">
                        <div class="card">
                            <img src="<?php echo $row['img']; ?>" class="card-img-top" alt="<?php echo $row['nom']; ?>">
                            <div class="card-body text-center"> 
                                <h5 class="card-title" style="font-size: 160%; font-weight: bold;"><?php echo $row['nom']; ?></h5>
                                <p class="card-text" ><?php echo isset($row['description']) ? $row['description'] : 'Aucune description disponible'; ?></p>
                                <p class="card-text">Prix: <?php echo $row['prix']; ?> €</p>
                            </div>
                        </div>
                    </div>
            <?php
                }
            } else {
                echo "<p>Aucun médicament trouvé.</p>";
            }
            ?>
        </div>
    </section>
</main>