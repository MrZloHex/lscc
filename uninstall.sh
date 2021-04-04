#!/bin/bash

cd ..
rm -rf lsc

cd /usr/local/bin
sudo rm lsc lscattr lscblk lsccpu lscinitcpio lscipc lscirq lsclocks lsclogins lscmem lscns lscusb

echo "DONE!"
