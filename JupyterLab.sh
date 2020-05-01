#!/bin/bash
cd /home/rhyme/Desktop/Project/
firefox $(jupyter notebook list | grep -Eo '\b(http)://[-A-Za-z0-9+&@#/%?=~_|!:,.;]*[-A-Za-z0-9+&@#/%=~_|]')
