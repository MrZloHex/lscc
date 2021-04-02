#!/bin/sh

cd ntui

# changing extention
for f in *.sh
do
	mv -- "$f" "${f%.sh}"
done

# installing in PATH directory and making they executable
for f in *
do
	chmod +x "$f"
	sudo mv "$f" /usr/local/bin
done

cd ..

rm -rf ntui

echo "DONE!"

rm install.sh
