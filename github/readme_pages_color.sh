#!/bin/bash
FILE='colors.md'

if [ -f $FILE ]; then
   echo "File $FILE exists."
else
	touch colors.md
fi

read -p 'color code: ' input_color

echo "- ![#"$input_color"](https://placehold.it/15/"$input_color"/000000?text=+) "#$input_color"" >> colors.md
