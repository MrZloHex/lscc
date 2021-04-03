#!/bin/bash

# defining your shell
if [[ $SHELL = "/bin/zsh" ]]
then
	my_shell="zsh"
elif [[ $SHELL = "/bin/bash" ]]
then
	my_shell="bash"
fi

cd ..
rm -rf lsc

cd /usr/local/bin
sudo rm -rf lsc

sed -i -e 's!# adding a path for LSC\nexport PATH="$PATH:/usr/local/bin/lsc"!!' $HOME/.$my_shell"rc"
source $HOME/.$my_shell"rc"

echo "DONE!"
