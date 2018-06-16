#!/bin/bash
log_path=/home/your_log_path/message_logon_telegram.log
who_login=$(who)
datum=$(date)

message_for_mail=$(
printf "Shell access from:\n"
printf "$who_login\n"
printf "$datum\n"
)

CHAT_ID="your_chat_id"
TOKEN="your_bot_token"
MSG=$message_for_mail

curl -s -X POST https://api.telegram.org/botNUMBER:$TOKEN/sendMessage -d chat_id=$CHAT_ID -d text="$MSG" >> $log_path
printf "\n" >> $log_path

exit
