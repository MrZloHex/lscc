#!/bin/bash

cd ..
rm -rf lsc

cd /usr/local/bin
sudo rm lsc lscattr lscblk lsccpu lscinitcpio lsclocks lsclogins lscmem lscns lscirq lscusb lscipc 

echo "DONE!"
