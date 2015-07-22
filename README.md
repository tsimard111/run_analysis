# run_analysis
Final project for Coursera: Getting and Cleaning Data

The final project description includes this text:
"You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected."

Note that the description of the README.md file is unclear. I am assuming that the README file is supposed to contain information about the scripts used.

I attempted to make my script as clear as possible. While I'm certain that more efficient code is possible, I believe my code is well written. Most of the techniques used in the code are covered in the course lectures. A couple of exceptions:

--I used grep when subsetting the data to include only columns dealing with mean and standard deviation. I then used gsub to replace jargon in the column names. For info on those commands see http://www.inside-r.org/r-doc/base/gsub
EDIT--apparently these commands are covered in week 4 lectures...It would be nice if material helpful for assignments were covered before assignments are due.

--I also found that sumarise_each is a very useful dplyr command that was not mentioned in the course lectures or tutorials. I used that chained with group_by to create the final tidy data set.

I believe everything else I did has been covered either in this course or the R programming course.  I will include here a list of all the steps in the script. These are also noted in the run_analysis.R code itself.

1. Creates a folder for the project.
2. Downloads the assignment files.
3. Unzips the files to the created directory.
4. Reads all of the required files.
5. Merges training and test sets using rbind.
6. Merges values with subject and activity numbers using cbind.
7. Creates provisional variable names (the first two are just "subject" and "activity" the rest are taken from V$2 of features.txt
8. Creates a new "smallData" dataframe using the first two columns along with any columns with names containing "mean" or "std" (this is the bit of code where I used the grep command).
9. Assigns labels to the factors of the activity column
10. Replaces some abbreviations and jargon in the variable names to make them more clearly descriptive (this is where I made use of gsub).
11. A condition stating that if dplyr is not already required then it should be installed and loaded.
12. Uses the dplyr package to create a new dataset that groups by activity and subject and then provides the mean value in each of the variables for each grouping. The resulting data set should be tidy, with the rows representing all of the permutations of subjects and activities and each column representing a distinct variable.
13. Writes a copy of the code as a textfile without row names.

For information on the origninal data set and the variables of the tidy data set see the codebook.md file. 
I hope my code is intuitive and easy to follow. Thanks for reviewing my work.

