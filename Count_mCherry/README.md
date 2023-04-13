# Readme

## Description

This script is designed for ImageJ and automates the processing of image stacks to analyze 3D objects and extract their centroid coordinates (X, Y, and Z). The script consists of two custom functions: **ProcessingDATA()** and **GetResult()**.

## Usage

Make sure you have ImageJ installed on your computer. If not, you can download it here: https://imagej.nih.gov/ij/download.html
  1. Copy the code above and paste it into a text file.
  2. Save the text file with the **.ijm** extension (e.g., 3D_objects_analysis.ijm).
  3. Open **ImageJ**, then go to **Plugins > Macros > Install...** and select the .ijm file you created.
  3. After installing the script, you can run it by going to **Plugins > Macros > 3D_objects_analysis** (or the name you chose when saving).

## Script Workflow

The script prompts the user to select the directory containing the image stacks.
It retrieves the list of files in that directory, sorts them alphabetically, and counts the number of images.
A loop iterates through the list of image stacks and performs the following operations for each image stack:
  1. Opens the image stack.
  2. Calls the **ProcessingDATA()** function, which enhances contrast, reduces noise, finds maxima, and analyzes 3D objects within the stack.
  3. Calls the **GetResult()** function, which extracts the X, Y, and Z centroid coordinates of the 3D objects and saves the results as a CSV file.
  4. For a detailed description of what each custom function does, please refer to their respective comments within the script.

**Note:** The script assumes that the images are properly named and ordered, and that the parameters used in the **ProcessingDATA()** function are appropriate for your specific image stacks. Adjust the parameters as needed to achieve optimal results for your use case.
