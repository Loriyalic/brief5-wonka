<?php include "utilities/header.php" ?>


<main>
    <h1>LES PRODUITS</h1>
    <div class="d-flex justify-content-center mb-4">
        <div class="dropdown">
            <button class="btn btn-secondary dropdown-toggle btn-gold" type="button" id="genreDropdown" data-bs-toggle="dropdown" aria-expanded="false">
                Filtrer par genre
            </button>
            <ul class="dropdown-menu" aria-labelledby="genreDropdown">
                <li><a class="dropdown-item" href="#">Chocolat</a></li>
                <li><a class="dropdown-item" href="#">Bonbon</a></li>
                <li><a class="dropdown-item" href="#">Sirop</a></li>
            </ul>
        </div>
    </div>

    <div class="d-flex justify-content-around flex-wrap gap-3">
        <?php include 'utilities/card.php'; ?>
        
    </div>
</main>

<?php include 'utilities/footer.php'; ?>
