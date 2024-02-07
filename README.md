// CONSIGNE : 
Création d’un site web dynamique qui interagit avec une base de données relationnelle en PHP

En tant que développeur Fullstack, création d'une base de données Création de composants d'accès aux données Création de composants réutilisable

Contexte du projet
En tant que développeur Web et Web mobile, ce projet vise à approfondir vos compétences en PHP et en bases de données relationnelles. Vous allez créer un site web dynamique qui interagit avec une base de données relationnelle, en utilisant le thème des médicaments et celui du cinéma, du manga ou de la passion que vous avez choisi pour le projet précédent. Vous allez pouvoir stocker, afficher des données relatives à votre thème, en utilisant des requêtes SQL.

Modalités pédagogiques
Travail Individuel : Projet à réaliser individuellement.

Utilisation de GitHub : Utiliser GitHub pour le versionnement et le déploiement du site web.

**Présentation Orale **: Chaque apprenant présentera son site web, expliquant les fonctionnalités, le schéma de la base de données, le code PHP et les requêtes SQL utilisés.

**Deadline **: Projet à rendre pour le mercredi 07 à 17h.

Modalités d'évaluation
Le projet fera l’objet d’une restitution orale de 10 minutes par apprenant. 
Ce que vous avez réalisé. 
Les difficultés auxquelles vous avez été confronté et la façon dont vous les avez résolues. 
Ce qui a été appris. 
Retour individuel

Livrables
Dépôt GitHub : Inclure le code source, le schéma de la base de données, le fichier SQL de création et de remplissage des tables, et toute documentation pertinente. 
Présentation Orale : Chaque apprenant présentera son site web, expliquant les fonctionnalités, le schéma de la base de données, le code PHP et les requêtes SQL utilisés. (Slide de présentation)

Critères de performance
Originalité et Créativité : Comment le site web exploite le thème du médicament et celui du cinéma/manga/passion de manière originale et créative. 
Qualité du Code : Code PHP propre, bien commenté et indenté. Eviter les répétitions de code. Utiliser des fonctions si nécessaire. Qualité de la Base de Données : Schéma de la base de données cohérent et normalisé. 
Requêtes SQL optimisées et adaptées aux besoins du site web. 
Utiliser des jointures, des sous-requêtes, des fonctions d’agrégation, des clauses WHERE, ORDER BY, GROUP BY, HAVING, etc. si nécessaire.

// CE QUE J'AI FAIT //

VOIR DOSSIER CONFIG,DATA,FUNCTION,fichier CARD.PHP, PRODUIT.PHP 

J'ai d'abord analysé ce qu'il était demandé pour comprendre ce qu'il fallait faire et ainsi créer une liste de tache à faire pour m'organiser: 

1) Reprendre le projet "Wonka" et analyser le site pour comprendre quelle base de donnée j'allais créer - dans ce cas la page "produit" 
2) Création de la base de donnée "wonka" et identifier les tables dont j'aurai besoin. 
3) Création de la table "medoc" contenant les informations sur les différents produits a afficher sur le site web et de la table "genre" pour filtrer par la suite les "medoc" par genre 
4) Connexion de la base de donnée "wonka" à mon site via php en l'intégrand dans mon code. 
J'ai pour ça créer un dossier "config" et une fichier "config.php" pour organiser mon code 
5) - Une fois connecté à la base de données, j'exécute une requête SQL pour récupérer les données que je souhaite afficher sur la page cards.php qui sera ensuite via include intégrer à ma page produit 
6) J'ai créé un fichier "card.php" pour afficher les données récupérées de la base de données à l'aide de card bootsrap 
7) Intégration du fichier "card.php" dans le fichier "produit.php" pour limiter les lignes de codes répétitives 
8) J'ai ensuite créé un bouton deroulant 'chocolat,bonbon,sirop' pour nous permettre de filtre les produits selon les genres quand on raffraichis la page. 
Deja créé dans la db la table genre est JOIN à la table "medoc" 
9) création de function sur le fichier genre.fn.php pour des requetes SQL malheuresement j'ai eu des difficultés à mettre en place ceci et à l'intégrer à la page 'produit.php' 
