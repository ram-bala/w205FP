#This file automatically created by load_files.awk - DO NOT EDIT
echo "Setting Up HDFS " 
echo "  Removing HDFS directory and contents for FP " 
hdfs dfs -rm -r /user/w205/FPSmall
echo "  Making directory FP in HDFS to host files "
hdfs dfs -mkdir /user/w205/FPSmall
echo "  HDFS Set up Completed "


tput setaf 2
 echo "Load into Hadoop - members_v3.csv"
tput sgr0
 echo "  1.Decompressing zipped file"
7za e -y "/data/staging/FP/members_v3.csv.7z" -o/data/staging/FP/>>log_7za_small.txt
head -50000 "/data/staging/FP/members_v3.csv" >>/data/staging/FPSmall/members_v3.csv
echo "  3.Removing file to save space - /data/staging/FP/members_v3.csv"
rm -f "/data/staging/FP/members_v3.csv"
echo "  4.Make directory in hdfs for members_v3.csv"
hdfs dfs -mkdir /user/w205/FPSmall/members
echo "  5.Putting file into hdfs..."
hdfs dfs -put /data/staging/FPSmall/members_v3.csv /user/w205/FPSmall/members/members_v3.csv
echo "  6.Done putting file into hdfs for members_v3.csv"
hdfs dfs -ls /user/w205/FPSmall/members/members_v3.csv
echo "  7.Removing file to save space - /data/staging/FP/members_v3.csv"
rm -f /data/staging/FP/members_v3.csv


tput setaf 2
 echo "Load into Hadoop - sample_submission_v2.csv"
tput sgr0
 echo "  1.Decompressing zipped file"
7za e -y "/data/staging/FP/sample_submission_v2.csv.7z" -o/data/staging/FP/>>log_7za_small.txt
head -50000 "/data/staging/FP/sample_submission_v2.csv" >>/data/staging/FPSmall/sample_submission_v2.csv
echo "  3.Removing file to save space - /data/staging/FP/sample_submission_v2.csv"
rm -f "/data/staging/FP/sample_submission_v2.csv"
echo "  4.Make directory in hdfs for sample_submission_v2.csv"
hdfs dfs -mkdir /user/w205/FPSmall/sample_submission
echo "  5.Putting file into hdfs..."
hdfs dfs -put /data/staging/FPSmall/sample_submission_v2.csv /user/w205/FPSmall/sample_submission/sample_submission_v2.csv
echo "  6.Done putting file into hdfs for sample_submission_v2.csv"
hdfs dfs -ls /user/w205/FPSmall/sample_submission/sample_submission_v2.csv
echo "  7.Removing file to save space - /data/staging/FP/sample_submission_v2.csv"
rm -f /data/staging/FP/sample_submission_v2.csv


tput setaf 2
 echo "Load into Hadoop - train.csv"
tput sgr0
 echo "  1.Decompressing zipped file"
7za e -y "/data/staging/FP/train.csv.7z" -o/data/staging/FP/>>log_7za_small.txt
head -50000 "/data/staging/FP/train.csv" >>/data/staging/FPSmall/train.csv
echo "  3.Removing file to save space - /data/staging/FP/train.csv"
rm -f "/data/staging/FP/train.csv"
echo "  4.Make directory in hdfs for train.csv"
hdfs dfs -mkdir /user/w205/FPSmall/train
echo "  5.Putting file into hdfs..."
hdfs dfs -put /data/staging/FPSmall/train.csv /user/w205/FPSmall/train/train.csv
echo "  6.Done putting file into hdfs for train.csv"
hdfs dfs -ls /user/w205/FPSmall/train/train.csv
echo "  7.Removing file to save space - /data/staging/FP/train.csv"
rm -f /data/staging/FP/train.csv


tput setaf 2
 echo "Load into Hadoop - train_v2.csv"
tput sgr0
 echo "  1.Decompressing zipped file"
7za e -y "/data/staging/FP/train_v2.csv.7z" -o/data/staging/FP/>>log_7za_small.txt
head -50000 "/data/staging/FP/train_v2.csv" >>/data/staging/FPSmall/train_v2.csv
echo "  3.Removing file to save space - /data/staging/FP/train_v2.csv"
rm -f "/data/staging/FP/train_v2.csv"
echo "  4.Make directory in hdfs for train_v2.csv"
hdfs dfs -mkdir /user/w205/FPSmall/train
echo "  5.Putting file into hdfs..."
hdfs dfs -put /data/staging/FPSmall/train_v2.csv /user/w205/FPSmall/train/train_v2.csv
echo "  6.Done putting file into hdfs for train_v2.csv"
hdfs dfs -ls /user/w205/FPSmall/train/train_v2.csv
echo "  7.Removing file to save space - /data/staging/FP/train_v2.csv"
rm -f /data/staging/FP/train_v2.csv


tput setaf 2
 echo "Load into Hadoop - transactions.csv"
tput sgr0
 echo "  1.Decompressing zipped file"
7za e -y "/data/staging/FP/transactions.csv.7z" -o/data/staging/FP/>>log_7za_small.txt
head -50000 "/data/staging/FP/transactions.csv" >>/data/staging/FPSmall/transactions.csv
echo "  3.Removing file to save space - /data/staging/FP/transactions.csv"
rm -f "/data/staging/FP/transactions.csv"
echo "  4.Make directory in hdfs for transactions.csv"
hdfs dfs -mkdir /user/w205/FPSmall/transactions
echo "  5.Putting file into hdfs..."
hdfs dfs -put /data/staging/FPSmall/transactions.csv /user/w205/FPSmall/transactions/transactions.csv
echo "  6.Done putting file into hdfs for transactions.csv"
hdfs dfs -ls /user/w205/FPSmall/transactions/transactions.csv
echo "  7.Removing file to save space - /data/staging/FP/transactions.csv"
rm -f /data/staging/FP/transactions.csv


tput setaf 2
 echo "Load into Hadoop - transactions_v2.csv"
tput sgr0
 echo "  1.Decompressing zipped file"
7za e -y "/data/staging/FP/transactions_v2.csv.7z" -o/data/staging/FP/>>log_7za_small.txt
head -50000 "/data/staging/FP/transactions_v2.csv" >>/data/staging/FPSmall/transactions_v2.csv
echo "  3.Removing file to save space - /data/staging/FP/transactions_v2.csv"
rm -f "/data/staging/FP/transactions_v2.csv"
echo "  4.Make directory in hdfs for transactions_v2.csv"
hdfs dfs -mkdir /user/w205/FPSmall/transactions
echo "  5.Putting file into hdfs..."
hdfs dfs -put /data/staging/FPSmall/transactions_v2.csv /user/w205/FPSmall/transactions/transactions_v2.csv
echo "  6.Done putting file into hdfs for transactions_v2.csv"
hdfs dfs -ls /user/w205/FPSmall/transactions/transactions_v2.csv
echo "  7.Removing file to save space - /data/staging/FP/transactions_v2.csv"
rm -f /data/staging/FP/transactions_v2.csv


tput setaf 2
 echo "Load into Hadoop - user_logs.csv"
tput sgr0
 echo "  1.Decompressing zipped file"
7za e -y "/data/staging/FP/user_logs.csv.7z" -o/data/staging/FP/>>log_7za_small.txt
head -50000 "/data/staging/FP/user_logs.csv" >>/data/staging/FPSmall/user_logs.csv
echo "  3.Removing file to save space - /data/staging/FP/user_logs.csv"
rm -f "/data/staging/FP/user_logs.csv"
echo "  4.Make directory in hdfs for user_logs.csv"
hdfs dfs -mkdir /user/w205/FPSmall/user_logs
echo "  5.Putting file into hdfs..."
hdfs dfs -put /data/staging/FPSmall/user_logs.csv /user/w205/FPSmall/user_logs/user_logs.csv
echo "  6.Done putting file into hdfs for user_logs.csv"
hdfs dfs -ls /user/w205/FPSmall/user_logs/user_logs.csv
echo "  7.Removing file to save space - /data/staging/FP/user_logs.csv"
rm -f /data/staging/FP/user_logs.csv


tput setaf 2
 echo "Load into Hadoop - user_logs_v2.csv"
tput sgr0
 echo "  1.Decompressing zipped file"
7za e -y "/data/staging/FP/user_logs_v2.csv.7z" -o/data/staging/FP/>>log_7za_small.txt
head -50000 "/data/staging/FP/user_logs_v2.csv" >>/data/staging/FPSmall/user_logs_v2.csv
echo "  3.Removing file to save space - /data/staging/FP/user_logs_v2.csv"
rm -f "/data/staging/FP/user_logs_v2.csv"
echo "  4.Make directory in hdfs for user_logs_v2"
hdfs dfs -mkdir /user/w205/FPSmall/user_logs
echo "  5.Putting file into hdfs..."
hdfs dfs -put /data/staging/FPSmall/user_logs_v2 /user/w205/FPSmall/user_logs/user_logs_v2
echo "  6.Done putting file into hdfs for user_logs_v2"
hdfs dfs -ls /user/w205/FPSmall/user_logs/user_logs_v2
echo "  7.Removing file to save space - /data/staging/FP/user_logs_v2"
rm -f /data/staging/FP/user_logs_v2


