#HOW TO USE THE FILE
#On commandline 
#awk -f load_files.awk list_of_files.txt>load_files.sh
# creates shell script that will do the following:
#   Take a list of files (and new file names), 
#   strip off first line from file and save under new filename
#   remove the original file to save space
BEGIN {FS=";";
	my_path = "/data/staging/FP/";
	hadoop_path = "/user/w205/FP"
	print "#This file automatically created by load_files.awk - DO NOT EDIT"
	print "echo \"Setting Up HDFS \" ";	
	print "echo \"  Removing HDFS directory and contents for FP \" ";
	print "hdfs dfs -rm -r " hadoop_path;
	print "echo \"  Making directory FP in HDFS to host files \"";
	print "hdfs dfs -mkdir " hadoop_path;
	print "echo \"  HDFS Set up Completed \"";
	print "\n"
}
#command to strip off the first line - headerline and redirect to the output file
{
    print "tput setaf 2";
    print " echo \"Load into Hadoop - " $1 "\"";
    print "tput sgr0";
    print " echo \"  1.Decompressing zipped file\"";
    print "7za e -y \"" my_path $1 ".7z\" -o" my_path ">>log_7za.txt";
    print "echo \"  2.Creating file without header line for" my_path $1 "\"";
    print "tail -n +2 \"" my_path $1 "\" >" my_path "nh_" $3;
#command to save the header line into a file
    print "echo -n \"" $1 ":\">>log_all_headers.csv"
    print "head -1 \"" my_path $1 "\" >>log_all_headers.csv";
#get a wordcount for auditing purposes later when i load tables
    print "wc -l \"" my_path $1 "\" >>log_audit_wc_local.txt";
#command to delete the original file to save space

    print "echo \"  3.Removing file to save space - " my_path $1 "\"";
    print "rm -f \"" my_path $1 "\"";
#command to create a directory in hdfs to house this file
    print "echo \"  4.Make directory in hdfs for " $3 "\"";
    print "hdfs dfs -mkdir /user/w205/FP/" $2;
#command to put this file into hdfs
    print "echo \"  5.Putting file into hdfs...\"";
    print "hdfs dfs -put " my_path "nh_" $3 " " hadoop_path "/" $2 "/" $3;
    print "echo \"  6.Done putting file into hdfs for " $3 "\"";
    print "hdfs dfs -ls " hadoop_path "/" $2 "/" $3;
    print "echo \"  7.Removing file to save space - " my_path "nh_" $3 "\"";
    print "rm -f " my_path "nh_" $3;
    print "\n";
}


