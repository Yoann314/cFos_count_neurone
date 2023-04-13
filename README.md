Readme

Description

Ce script permet de combiner des images en séquences de trois en utilisant la fonction "Images to Stack" dans ImageJ. Les images combinées sont ensuite enregistrées dans un sous-dossier "Results" du répertoire des images source.

Utilisation

Assurez-vous d'avoir ImageJ installé sur votre ordinateur. Si ce n'est pas le cas, vous pouvez le télécharger ici : https://imagej.nih.gov/ij/download.html
Copiez le code ci-dessus et collez-le dans un fichier texte.
Enregistrez le fichier texte avec l'extension .ijm (par exemple, image_stacker.ijm).
Ouvrez ImageJ, puis allez dans Plugins > Macros > Install... et sélectionnez le fichier .ijm que vous avez créé.
Après avoir installé le script, vous pouvez le lancer en allant dans Plugins > Macros > image_stacker (ou le nom que vous avez choisi lors de l'enregistrement).
Fonctionnement du script

Le script demande à l'utilisateur de sélectionner le répertoire contenant les images à traiter.
Il récupère la liste des fichiers présents dans ce répertoire, les trie par ordre alphabétique et compte le nombre d'images.
Une boucle parcourt la liste d'images et effectue les opérations suivantes :
Ouvre les trois images suivantes dans la liste.
Les combine en utilisant la fonction "Images to Stack" d'ImageJ.
Renomme le résultat avec le nom de la première image ouverte.
Enregistre le résultat dans un sous-dossier "Results" du répertoire des images source.
Ferme toutes les images ouvertes.
Passe aux trois images suivantes.
La boucle se termine lorsqu'il n'y a plus d'images à traiter ou si le sous-dossier "Results/" est atteint.

Note : Le script suppose que les images sont correctement nommées et ordonnées, et qu'il y a un nombre multiple de trois images à traiter.
