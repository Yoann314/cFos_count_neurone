repertoire_image = getDir("Veuillez séléctionner le repertoire contenant les images");
array_image_name = getFileList(repertoire_image);
Array.sort(array_image_name);
nb_of_images = lengthOf(array_image_name);

curent_image = 0
while (curent_image < nb_of_images && array_image_name[curent_image] != "Results/" ) {
	open(repertoire_image + array_image_name[curent_image]);
	open(repertoire_image + array_image_name[curent_image+1]);
	open(repertoire_image + array_image_name[curent_image+2]);
	run("Images to Stack", "name=Titre");
	rename(array_image_name[curent_image]);
	
	save(repertoire_image + "Results/" + array_image_name[curent_image]);
	close("*");
	curent_image = curent_image + 3;
}