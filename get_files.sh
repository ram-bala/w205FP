#What this file does:
# Checks to see if files are downloaded and exists
#!/bin/bash 
#!/bin/bash
#change dir to staging area
cd /data/staging/FP
#get the remote file
curl "https://kaggle2.blob.core.windows.net/competitions-data/kaggle/7163/members_v2.csv.7z?sv=2015-12-11&sr=b&sig=vdetX8ilDx2RpAT8HXdEBWqoDyAF3thKnbgMGrBzLJ4"%"3D&se=2017-11-14T14"%"3A50"%"3A56Z&sp=r" -H "Host: kaggle2.blob.core.windows.net" -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0) Gecko/20100101 Firefox/56.0" -H "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8" -H "Accept-Language: en-US,en;q=0.5" --compressed -H "Referer: https://www.kaggle.com/c/kkbox-churn-prediction-challenge/data" -H "Connection: keep-alive" -H "Upgrade-Insecure-Requests: 1" -o members_v2.csv.7z

curl "https://kaggle2.blob.core.windows.net/competitions-data/kaggle/7163/sample_submission_v2.csv.7z?sv=2015-12-11&sr=b&sig=o"%"2BJOH4kYErld5B9UbmLzLofCZco"%"2BcthN"%"2FIHM09fLbE4"%"3D&se=2017-11-14T14"%"3A56"%"3A46Z&sp=r" -H "Host: kaggle2.blob.core.windows.net" -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0) Gecko/20100101 Firefox/56.0" -H "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8" -H "Accept-Language: en-US,en;q=0.5" --compressed -H "Referer: https://www.kaggle.com/c/kkbox-churn-prediction-challenge/data" -H "Connection: keep-alive" -H "Upgrade-Insecure-Requests: 1" -o sample_submission_v2.csv.7z

curl "https://storage.googleapis.com/kaggle-competitions-data/kaggle/7163/train.csv.7z?GoogleAccessId=competitions-data@kaggle-161607.iam.gserviceaccount.com&Expires=1510671466&Signature=X0OCyKvjQWuSocXq9l23lvon4"%"2BkU"%"2FhQUnWCiBSYd5bAcOXm89XIUCwAsZ8nkcWRidv3Ndm82ebdXR18nlsl"%"2Ft6iafn"%"2FIxfG5xdGB5P7019OGeuMAnJRTuk6UH"%"2BLh8lGlU"%"2BdOkRDin"%"2BqT5HBF"%"2B7ASsGjnEJs8Di1pKAl9YBFCN2A8xTvBULWR"%"2BMiPheXRAHhpFGcCO44z4RDTyJW93CIdY5PwepdrIrf"%"2Fj4XFUiAeMvgJN"%"2BuZeueCiJp2e7mL5wMU8SnQBU6mKHwjFm1cyGNrv"%"2FqK3ZkgS1N9J96HY8oU"%"2BB"%"2F0RiHOGY4"%"2BGzXwAWuxnFwmKdrM3x3zSzPFlbM2"%"2BHMKBA"%"3D"%"3D" -H "Host: storage.googleapis.com" -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0) Gecko/20100101 Firefox/56.0" -H "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8" -H "Accept-Language: en-US,en;q=0.5" --compressed -H "Referer: https://www.kaggle.com/c/kkbox-churn-prediction-challenge/data" -H "Connection: keep-alive" -H "Upgrade-Insecure-Requests: 1" -o train.csv.7z

curl "https://kaggle2.blob.core.windows.net/competitions-data/kaggle/7163/train_v2.csv.7z?sv=2015-12-11&sr=b&sig=hY5mwZ8cLIjMrMdts7"%"2Bbz2WTZDiksgL9I"%"2FwNUYCQSW8"%"3D&se=2017-11-14T14"%"3A58"%"3A27Z&sp=r" -H "Host: kaggle2.blob.core.windows.net" -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0) Gecko/20100101 Firefox/56.0" -H "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8" -H "Accept-Language: en-US,en;q=0.5" --compressed -H "Referer: https://www.kaggle.com/c/kkbox-churn-prediction-challenge/data" -H "Connection: keep-alive" -H "Upgrade-Insecure-Requests: 1" -o train_v2.csv.7z

curl "https://storage.googleapis.com/kaggle-competitions-data/kaggle/7163/transactions.csv.7z?GoogleAccessId=competitions-data@kaggle-161607.iam.gserviceaccount.com&Expires=1510670780&Signature=XXUh5"%"2Fmndn2"%"2FKpcLLS19yfx8R5I"%"2BQ0Q"%"2Fp2rxijSTMtLL2Y7sugKvSfQ3TBuDz8MnkLoyCj3kWsuNY7eSpNp"%"2BjC9vmIMGa7empx3tmLpsIc11SbhiuRWKLIRMkX"%"2Fczi7RonHIKj"%"2Bga5ec02bTVnA36f3I8RGYduxjOQCPydb3zbM5Ok80vAAUP7l9DFlyILF"%"2BTI3S68"%"2Fl"%"2Bck5Tl"%"2FvdX7kEp6neU2w9q"%"2F86Wd8j"%"2BQYksTiC8jyAL7b"%"2BOV8nQFEeTaxfxCjpWAn29dk9EhH47GDoMWDNCDtJoU9oKOGIhKzzaXPh8qbPuXBgtTxu3i7vsKxtLja7Uizh3gALXQ35WGUJg"%"3D"%"3D" -H "Host: storage.googleapis.com" -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0) Gecko/20100101 Firefox/56.0" -H "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8" -H "Accept-Language: en-US,en;q=0.5" --compressed -H "Referer: https://www.kaggle.com/c/kkbox-churn-prediction-challenge/data" -H "Connection: keep-alive" -H "Upgrade-Insecure-Requests: 1" -o transactions.csv.7z

curl "https://kaggle2.blob.core.windows.net/competitions-data/kaggle/7163/transactions_v2.csv.7z?sv=2015-12-11&sr=b&sig=loBCQW"%"2BrDUcgevTpPMrf9Fg34PcMSq0CjPvar"%"2FiUSP8"%"3D&se=2017-11-14T14"%"3A48"%"3A58Z&sp=r" -H "Host: kaggle2.blob.core.windows.net" -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0) Gecko/20100101 Firefox/56.0" -H "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8" -H "Accept-Language: en-US,en;q=0.5" --compressed -H "Referer: https://www.kaggle.com/c/kkbox-churn-prediction-challenge/data" -H "Connection: keep-alive" -H "Upgrade-Insecure-Requests: 1" -o transactions_v2.csv.7z

curl "https://storage.googleapis.com/kaggle-competitions-data/kaggle/7163/user_logs.csv.7z?GoogleAccessId=competitions-data@kaggle-161607.iam.gserviceaccount.com&Expires=1510670967&Signature=AwwJ5dCTZ4CfwQDTDHuKN86KHA6IevnuD2Nc"%"2FilxofxJQlB6ih0OOm6Q"%"2Fg375G5S3HzkR7ErnkhbX4XBxYi8PJIMRxkiv8aJAlxNHOvqLqrI6kfoCijNo7l"%"2BK4qI9598kOc0VaWZckiUHIyKyV8tGr71OAdqxLtGfL9BLQm89sZzSSZGn02e"%"2BIOHdbOsr0NaJDupTgAxjhZlOaZxJhOlqxpIV8L4m5OM4RriyIKEvnD3oP2oZm5R2vPKx57IrA"%"2B64"%"2BVMkYoyaUD4GaGGXNGPRcJnOmiazRuJ2zYcREKnDujhlDdYubBpb6CGxQ3EXy9PJkxPfseQPLWd"%"2FOhoYixMxg"%"3D"%"3D" -H "Host: storage.googleapis.com" -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0) Gecko/20100101 Firefox/56.0" -H "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8" -H "Accept-Language: en-US,en;q=0.5" --compressed -H "Referer: https://www.kaggle.com/c/kkbox-churn-prediction-challenge/data" -H "Connection: keep-alive" -H "Upgrade-Insecure-Requests: 1" -o user_logs.csv.7z

curl "https://kaggle2.blob.core.windows.net/competitions-data/kaggle/7163/user_logs_v2.csv.7z?sv=2015-12-11&sr=b&sig=ml"%"2BYK5wcbqRDzFW4iq8FwnrEf"%"2Fd6H4JBzlV2WuJrhLw"%"3D&se=2017-11-14T14"%"3A50"%"3A07Z&sp=r" -H "Host: kaggle2.blob.core.windows.net" -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0) Gecko/20100101 Firefox/56.0" -H "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8" -H "Accept-Language: en-US,en;q=0.5" --compressed -H "Referer: https://www.kaggle.com/c/kkbox-churn-prediction-challenge/data" -H "Connection: keep-alive" -H "Upgrade-Insecure-Requests: 1" -o user_logs_v2.csv.7z


curl "https://storage.googleapis.com/kaggle-competitions-data/kaggle/7163/sample_submission_zero.csv.7z?GoogleAccessId=competitions-data@kaggle-161607.iam.gserviceaccount.com&Expires=1510671161&Signature=SachUD5JXCvNdwppO5eKAbqKnzN5tRLx9braA1wtN3EgJb7tTRjFsz6Lfm01hV"%"2BI"%"2BczFO7Bj"%"2B"%"2FVaK06EAtnZCd1YVzlDudVbXEiEQHspvpXYVnNRC5m"%"2BaTTsRiOLSoMFFdHspPwUoCHgIBrs4t9zAx7SEdBIjCnZMQMOeJKZZcTraSjMtsIKBP08AdKBvCYT0zFD"%"2BdXWbMl"%"2ByL3iB3gpO9jUALD"%"2F7LxgwLZsYAcBegHf3MqAhoGrs6WrFIy2U"%"2FTs6RWgGXiDY7Gex3IyumUfEcYuFuqAaHGyEauuDVcO6DzcxHpXiebBoCmSabKbFn2xcoDnL1BpxG"%"2FNurRuAcg0Ag"%"3D"%"3D" -H "Host: storage.googleapis.com" -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0) Gecko/20100101 Firefox/56.0" -H "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8" -H "Accept-Language: en-US,en;q=0.5" --compressed -H "Referer: https://www.kaggle.com/c/kkbox-churn-prediction-challenge/data" -H "Connection: keep-alive" -H "Upgrade-Insecure-Requests: 1" -o sample_submission_zero.csv.7z

cd $MY_DIR
