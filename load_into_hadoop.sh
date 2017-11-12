#This file automatically created by load_files.awk - DO NOT EDIT
echo "Setting Up HDFS " 
echo "  Removing HDFS directory and contents for FP " 
hdfs dfs -rm -r /user/w205/FP
echo "  Making directory FP in HDFS to host files "
hdfs dfs -mkdir /user/w205/FP
echo "  HDFS Set up Completed "


tput setaf 2
 echo "Load into Hadoop - train.csv"
tput sgr0
 echo "  1.Decompressing zipped file"
7za e -y "/data/staging/FP/train.csv.7z" -o/data/staging/FP/>>log_7za.txt
echo "  2.Creating file without header line for/data/staging/FP/train.csv"
tail -n +2 "/data/staging/FP/train.csv" >/data/staging/FP/nh_train.csv
echo -n "train.csv:">>log_all_headers.csv
head -1 "/data/staging/FP/train.csv" >>log_all_headers.csv
wc -l "/data/staging/FP/train.csv" >>log_audit_wc_local.txt
echo "  3.Removing file to save space - /data/staging/FP/train.csv"
rm -f "/data/staging/FP/train.csv"
echo "  4.Make directory in hdfs for train.csv"
hdfs dfs -mkdir /user/w205/FP/train
echo "  5.Putting file into hdfs..."
hdfs dfs -put /data/staging/FP/nh_train.csv /user/w205/FP/train/train.csv
echo "  6.Done putting file into hdfs for train.csv"
hdfs dfs -ls /user/w205/FP/train/train.csv
echo "  7.Removing file to save space - /data/staging/FP/nh_train.csv"
rm -f /data/staging/FP/nh_train.csv


tput setaf 2
 echo "Load into Hadoop - train_v2.csv"
tput sgr0
 echo "  1.Decompressing zipped file"
7za e -y "/data/staging/FP/train_v2.csv.7z" -o/data/staging/FP/>>log_7za.txt
echo "  2.Creating file without header line for/data/staging/FP/train_v2.csv"
tail -n +2 "/data/staging/FP/train_v2.csv" >/data/staging/FP/nh_train_v2.csv
echo -n "train_v2.csv:">>log_all_headers.csv
head -1 "/data/staging/FP/train_v2.csv" >>log_all_headers.csv
wc -l "/data/staging/FP/train_v2.csv" >>log_audit_wc_local.txt
echo "  3.Removing file to save space - /data/staging/FP/train_v2.csv"
rm -f "/data/staging/FP/train_v2.csv"
echo "  4.Make directory in hdfs for train_v2.csv"
hdfs dfs -mkdir /user/w205/FP/train
echo "  5.Putting file into hdfs..."
hdfs dfs -put /data/staging/FP/nh_train_v2.csv /user/w205/FP/train/train_v2.csv
echo "  6.Done putting file into hdfs for train_v2.csv"
hdfs dfs -ls /user/w205/FP/train/train_v2.csv
echo "  7.Removing file to save space - /data/staging/FP/nh_train_v2.csv"
rm -f /data/staging/FP/nh_train_v2.csv


