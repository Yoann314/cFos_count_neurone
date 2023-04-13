# Readme

This directory contains CSV files generated from imaging data.

## Filename Structure

The filenames follow the format **Results_1231_YYYY-MM-DD_mCherry_1L.tif.csv**, where:
	#^ **1231** is a unique identifier for each sample
	* **YYYY-MM-DD** is the date when the data was collected
	* **mCherry** is the name of the protein studied
	* **1L.tif** is the corresponding image filename

## CSV File Contents

Each CSV file contains the fluorescence intensity data for the corresponding sample. The following columns are included:
	* **Position:** the position of the sample on the plate
	* **Time (s):** the time elapsed since the start of the experiment
	* **Intensity:** the measured fluorescence intensity

## Scripts

The **count_csv_lines.py** script reads all the CSV files in this directory and stores the name of each CSV file (without the **.tif.csv** extension) and the number of lines it contains in a text file **results.txt**.
