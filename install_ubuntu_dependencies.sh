#! /usr/bin/env bash

echo "HasDev dependencies installer."
echo "Updating software repo lists..."
echo ""
sudo apt-get update

echo ""
echo "Installing basic tools..."
echo ""
sudo apt-get install -y python-dev gcc g++ binutils build-essential git make curl wget

echo ""
echo "Installing other libraries, used as extensions by various HasGeek apps..."
echo ""
sudo apt-get install -y libxml2 libxml2-dev libxslt1-dev libffi-dev

echo ""
echo "Installing Chris Lea's PPA for the latest versions of Node.js, used as a JS runtime..."
sudo apt-get install -y python-software-properties
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install -y nodejs
echo ""

echo "All dependencies have been installed. Feel free to submit a PR with any additional packages, as and when needed." 
