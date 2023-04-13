# Readme

## Overview

This project automates the processing and analysis of fluorescence imaging data in ImageJ. The primary goal is to study the properties of 3D objects within image stacks, such as their centroid coordinates from the imaging data.

The project contains three primary components, each located in its own directory:

1. An ImageJ macro script creates stacks with 3 depth images from a Nanozoomer slide scanner and creates a 3D object.
2. An ImageJ macro script for processing image stacks and extracting nuber of cells in 3D. 
3. A Python script that counts the number of lines in each CSV file and stores the information in a results.txt 

## ImageJ Macro Script Convert images to stack

This program selects a directory containing images, sorts the image file names alphabetically, stacks them in batches of three, renames them, and saves them in a "Results" folder using the original file name, using the "ImageJ" image processing scripting language.

## ImageJ Macro Script count cells in 3D

The ImageJ macro script (3D_objects_analysis.ijm) is designed to analyze image stacks and extract the X, Y, and Z centroid coordinates of 3D objects within each stack. The script consists of two custom functions: ProcessingDATA() and GetResult(). Refer to the script's specific readme for detailed usage instructions and a description of the custom functions.

## Python Script

The **count_csv_lines.py** script reads all the CSV files in the fluorescence intensity data directory and stores the name of each CSV file (without the .tif.csv extension) and the number of lines it contains in a text file **results.txt**.

## Final Notes

This project provides a comprehensive solution for processing and analyzing fluorescence imaging data using ImageJ and Python. It allows researchers to count the number of cells marked with a fluorochrome in the image stacks and extract the number of cells in 3D. It avoids an overestimation of the number of cells to detect by recognizing the 3D shape. moreover, it can very easily be adapted to measure the intensity of fluorescence carried by each cell.

## Author

This program was developed by Yoann Fraysse as part of understanding neocortical engram reorganization during long-term memory consolidation and its alteration in Alzheimer's disease. The purpose of this program is to process a set of images form nanozoomer using the image processing software ImageJ, in order to extract centroid coordinates of 3D objects in each image.
