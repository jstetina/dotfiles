#! /bin/bash

## SEND MAIL TO ADDRESS
## PARAMS:
## 1 -> mail subject
## 2 -> mail content
## 3 -> recipient mail (optional)

RECIPIENT_MAIL="jakub.stetina2003@gmail.com"
HOSTNAME=$(hostname)

# Check for mutt config file
if [ ! -f "./.mutt/muttrc" ];
then
    echo "Muttrc does not exist, mutt is thus not configured to send mails"
    exit 1
fi

## Parse parameters
while getopts "b:s:r:u:" opt; do 
    case $opt in 
        b)
            MAIL_BODY="$OPTARG"
            ;;
        s)
            MAIL_SUBJECT="$OPTARG"
            ;;
        r)
            RECIPIENT_MAIL="$OPTARG"
            ;;
        u)
            UNIT_FILE="$OPTARG"
            ;;
    esac
done
shift $((OPTIND - 1))

# Check parameters
if [ -z "$MAIL_BODY" ];
then
    if [ -z "$UNIT_FILE" ];
    then  
        echo "No mail body supplied"
        exit 1
    else
        MAIL_BODY=$(sudo systemctl status "$UNIT_FILE")
    fi
fi

if [ -z "$MAIL_SUBJECT" ];
then 
    echo "No mail subject supplied"
    exit 1
fi




# Send mail
echo "$MAIL_BODY" | mutt -s "$HOST_NAME: $MAIL_SUBJECT" "$RECIPIENT_MAIL"
if [ $? -eq 0 ];
then 
    echo "Mail sent successfuly"
    exit 0
else
    echo "Error while sending mail"
    exit 1
fi

exit 0









