#!/bin/bash

cd ..
rm -rf lsc

cd /usr/local/bin
sudo rm lsc lscattr lscblk lsccpu lscinitcpio lscipc lscirq lsclocks lsclogins lscmem lscns lscusb

cd /usr/local/man/man1
sudo rm lsc.1.gz

echo "DONE!"
