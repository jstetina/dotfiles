#! /bin/bash
PYTHON_VERSION=$(python --version)
PYTHON_3_11=0

sudo apt install python3 python-is-python3 -y

# Check python version
if [[ $(echo "$PYTHON_VERSION" | grep 3.11) ]]
then
    sudo apt install pipx python3-full -y
    PYTHON_3_11=1
fi

install(){
    if [[ $PYTHON_3_11 -eq 1 ]]
    then
        pipx install "$1"
    else
        pip install "$1"
    fi
}

install bs4;
install selenium;
install requests;
install urllib;
install json;
install pushbullet.py
install numpy;
install pandas;
install validators
install re;
