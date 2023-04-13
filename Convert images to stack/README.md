# Readme

## Description

This script combines images in sequences of three using the "Images to Stack" function in ImageJ. The combined images are then saved in a "Results" subfolder of the source images directory.

## Usage

1. Make sure you have ImageJ installed on your computer. If not, you can download it here: https://imagej.nih.gov/ij/download.html
2. Copy the code above and paste it into a text file.
3. Save the text file with the .ijm extension (e.g., image_stacker.ijm).
4. Open ImageJ, then go to Plugins > Macros > Install... and select the .ijm file you created.
5. After installing the script, you can run it by going to Plugins > Macros > image_stacker (or the name you chose when saving).

## Script Workflow

1. The script prompts the user to select the directory containing the images to process.
2. It retrieves the list of files in that directory, sorts them alphabetically, and counts the number of images.
3. A loop iterates through the list of images and performs the following operations:
  - Opens the next three images in the list.
  - Combines them using ImageJ's "Images to Stack" function.
  - Renames the result with the name of the first opened image.
  - Saves the result in a "Results" subfolder within the source images directory.
  - Closes all opened images.
  - Moves on to the next three images.

The loop ends when there are no more images to process or when the "Results/" subfolder is reached.

Note: The script assumes that the images are properly named and ordered, and that there is a multiple of three images to process.
