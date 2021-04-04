#!/bin/bash

# making own directory
#sudo mkdir /usr/local/bin/lsc
# adding it into $PATH
#sed -i -e '$a# adding a path for LSC\nexport PATH="$PATH:/usr/local/bin/lsc"' $HOME/.$my_shell"rc"
#source $HOME/.$my_shell"rc"

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
