#!/bin/bash

cd ntui

# changing extention
for f in *.sh
do
	mv -- "$f" "${f%.sh}"
done

# making own directory
mkdir /usr/local/bin/lsc
# adding it into $PATH
# $HOME/.$0rc
sed -i -e -f sed_commands #HOME/.$0rc	


# installing in PATH directory and making they executable
for f in *
do
	chmod +x "$f"
	sudo mv "$f" /usr/local/bin/lsc
done

cd ..

rm -rf ntui

echo "DONE!"

rm install.sh
