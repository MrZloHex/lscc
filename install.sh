#!/bin/bash

# defining your shell
if [[ $SHELL = "/bin/zsh" ]]
then
	my_shell="zsh"
elif [[ $SHELL = "/bin/bash" ]]
then
	my_shell="bash"
fi

echo "1"

# making own directory
sudo mkdir /usr/local/bin/lsc
# adding it into $PATH
sed -i -e '$a# adding a path for LSC\nexport PATH="$PATH:/usr/local/bin/lsc"' $HOME/.$my_shell"rc"
source $HOME/.$my_shell"rc"

echo "2"

cd ntui

echo "3"

# changing extention
for f in *.sh
do
	mv -- "$f" "${f%.sh}"
done

echo "4"

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
