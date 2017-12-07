Contents of this directory and how to use them.
Objective:
---------
  Get zipped (7za) files from kaggle using curl
  unzip each file and load it into hdfs
  note: issue following command if 7za is not installed
        sudo yum install p7zip p7zip-plugins


File Description (in typical Execution order):
----------------------------------------------
  1. get_files.sh: script that has the curl commands to get the kaggle zipped files
  2. load_files.awk: awk script that creates shell script (see below for execution details)
  3. load_into_hadoop.sh: automatically created by the awk script
 

Input files:
----------------
  list_of_files.inp: File that has list of file names and how they should end up in hadoop; Each row has 3 sections separated by ";".  First section is the local file name (file name of the csv file after unzipping);  Second section is Directory Name in Hadoop where we want this file to go; Third the file name that we want it to have in Hadoop; 
<local file name>;<hadoop directory>;<hadoop filename>
example entry: sample_submission_zero.csv;sample_submission;sample_submission.csv

Support files:
--------------
load_files.awk:  awk script that creates the shell script to do the following:
usage: awk -f load_files.awk list_of_files.inp  > load_into_hadoop.sh
   0. set up directory structure in hadoop
   1. unzip each file in list_of_files.inp
   2. strip the header row
   3. save the header row in a file (so we can use it later in the ddl if needed)
   4. put the file in hadoop
   5. remove the unzipped file, the file without the header etc. to save space
 
Output and Log Files:
--------------------
1. log_7za.txt:  log file that has output from the unzipping process
2. log_all_headers.csv:  has all the header lines from each file
3. log_audit_wc_local.txt: has line count for all the local unzipped files - use this to verify loading into hive tables later

