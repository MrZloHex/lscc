#!/bin/sh

cd ntui

for f in *.sh
do
	mv -- "$f" "${f%.sh}"
done

for f in *
do
	chmod +x "$f"
	sudo mv "$f" /usr/local/bin
	rm "$f"
done

cd ..

rm -rf ntui

echo "DONE!"
