#!/usr/bin/env sh

USER=""
PASS=""

if [[ "$FLOWER_BASIC_AUTH" ]]; then
	USER=$(echo "$FLOWER_BASIC_AUTH" | cut -d ":" -f 1)
	PASS=$(echo "$FLOWER_BASIC_AUTH" | cut -d ":" -f 2)

	echo "> Basic Auth Configured: $USER:$PASS"
fi

if [[ "$USER" && "$PASS" ]]; then
	flower --basic=${USER}:${PASS}
else
	flower
fi
