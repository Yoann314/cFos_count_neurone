repertoire_image = getDir("Veuillez séléctionner le repertoire contenant les images");
array_image_name = getFileList(repertoire_image);
Array.sort(array_image_name);

nb_of_images = lengthOf(array_image_name);

for (curent_image = 0; curent_image < nb_of_images; curent_image++) {	
	open(repertoire_image + array_image_name[curent_image]);
	ProcessingDATA();
	GetResult(); 
}

function ProcessingDATA() { 
	// The ProcessingDATA() function is a custom image processing function designed for ImageJ. 
	// It performs a series of operations on an image stack to enhance contrast, reduce noise, find maxima, and analyze 3D objects within the stack.
	
	run("8-bit");
	run("Grays");
	run("Enhance Contrast", "saturated=0.35");
	setMinAndMax(33, 34);
	call("ij.ImagePlus.setDefault16bitRange", 8);
	run("Apply LUT", "stack");
	
	p = 30;
	getDimensions(width, height, channels, slices, frames);
	setSlice((floor(slices/2)));
	run("Enhance Contrast", "saturated=0.35");
	run("8-bit");
	run("Gaussian Blur...", "sigma=2 stack");
	n = nSlices;
	name = getTitle();
	for(i = 1; i <= n; i++) {
		selectWindow(name);
		setSlice(i); // Affiche la iième tranche de la pile active
		run("Find Maxima...", "prominence="+p+" output=[Single Points]");
	}	
	// Make stack from image named with "Maxima"
	run("Images to Stack", "method=[Copy (center)] name=Stack.tif title=Maxima use");
	run("Options...", "iterations=1 count=1 black do=Dilate stack");
	
	selectWindow("Stack.tif");
	rename("origine");
	run("Set Scale...", "distance=0 known=0 unit=pixel");
	run("3D Objects Counter", "threshold=128 slice=3 min.=3 max.=2468196 statistics");
}
	
function GetResult() {
	// The GetResult() function is a custom function designed for ImageJ. 
	// It extracts the statistical data generated from the ProcessingDATA() function 
	// (or any other function that creates a "Statistics for origine" window), specifically focusing on the X, Y, and Z centroid coordinates of 3D objects within an image stack. 
	
	selectWindow("Statistics for origine");
	nb_ligne1 = Table.size;
	X_Centroid = Table.getColumn("X");
	Y_Centroid = Table.getColumn("Y");
	Z_Centroid = Table.getColumn("Z");
	Array.show("Results" + array_image_name[curent_image] + ".csv",X_Centroid, Y_Centroid, Z_Centroid);
	
	saveAs("Results", repertoire_image + "Results_" + array_image_name[curent_image] + ".csv");
	
	close("*"); // close all image windows
	selectWindow("Results_" + array_image_name[curent_image] + ".csv");
	run("Close");
	selectWindow("Statistics for origine");
	run("Close");
}
