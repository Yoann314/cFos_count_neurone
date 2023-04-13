import os
import csv

# Nom du dossier contenant les fichiers CSV
dossier_csv = '/Users/yoann/Downloads/Nanozoomer/Concaténation résultats'

# Nom du fichier texte où stocker les résultats
fichier_resultat = 'resultats.txt'

# Ouvre le fichier texte en mode écriture
with open(fichier_resultat, 'w') as f:

    # Parcours tous les fichiers du dossier CSV
    for fichier in os.listdir(dossier_csv):
        if fichier.endswith('.csv'):

            # Ouvre le fichier CSV et compte le nombre de lignes
            with open(os.path.join(dossier_csv, fichier), 'r') as csvfile:
                reader = csv.reader(csvfile)
                nb_lignes = sum(1 for row in reader)

            # Écrit le nom du fichier sans extension ".tif" et le nombre de lignes dans le fichier résultat
            nom_fichier, extension = os.path.splitext(fichier)
            nom_fichier_sans_tif = nom_fichier.replace('_1L', '').replace('.tif', '') # supprime "_1L" et ".tif" du nom de fichier
            f.write(nom_fichier_sans_tif + '\t' + str(nb_lignes) + '\n')