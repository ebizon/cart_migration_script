# We need to do two things:

# 1. Start Django server and keep it running in background.
# 2. Start local mondodb server.

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

read -p "This script will start Django server and Mongodb server. Wish to Proceed? (y/n)" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    (nohup python3 ../conversionsite/manage.py runserver 142.54.160.170:8000 > /dev/null 2>&1 &) && echo "${green}Django server is running" || echo "${red}Django server is not running. There was an error."

    (nohup mongod --dbpath ../conversionsite/mongodb --port 2197 > /dev/null 2>&1 &) && echo "${green}Mongodb server is running" || echo "${red}Mongodb server is not running. There was an error."

    fi




# nohup means: Do not terminate this process even when the stty is cut off.
# > /dev/null means: stdout goes to /dev/null (which is a dummy device that does not record any output).
# 2>&1 means: stderr also goes to the stdout (which is already redirected to /dev/null). You may replace &1 with a file path to keep a log of errors, e.g.: 2>/tmp/myLog
# & at the end means: run this command as a background task.




