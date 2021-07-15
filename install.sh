#!/usr/bin/env bash

dir="$( cd $(dirname "${BASH_SOURCE[0]}") && pwd)"

for FILEPATH in `find "$dir"/runcom/`; do
	FILENAME=`basename $FILEPATH`
	[ -f "$FILEPATH" ] && ln -sfv "$FILEPATH" ~/.$FILENAME
done

ln -sfv $dir ~/.dotfiles
