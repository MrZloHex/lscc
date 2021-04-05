#!/bin/bash

cd ..
rm -rf lsc

cd /usr/local/bin
sudo rm lsc lscattr lscblk lsccpu lscinitcpio lscipc lscirq lsclocks lsclogins lscmem lscns lscusb

cd /usr/local/man/man1
sudo rm lsc.1.gz lscattr.1.gz lscblk.1.gz lsccpu.1.gz lscinitcpio.1.gz lscipc.1.gz lscirq.1.gz lsclocks.1.gz lsclogins.1.gz lscmem.1.gz lscns.1.gz lscusb.1.gz

echo "DONE!"
