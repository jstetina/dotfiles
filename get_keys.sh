#! /bin/bash

SSH_DIR="$HOME/.ssh/"

SITE="https://jakubstetina.cz/ssh/get-keys.php"
OUT_FILE="keys" 

KEYS=$(wget -q "$SITE" -O "$SSH_DIR$OUT_FILE")

cat "$SSH_DIR$OUT_FILE" >> "${SSH_DIR}authorized_keys"
