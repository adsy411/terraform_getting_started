#!/bin/bash

sudo apt-get install unzip
unzip terraform_0.11.10_linux_amd64.zip
sudo mv terraform /usr/local/bin/
terraform --version 
