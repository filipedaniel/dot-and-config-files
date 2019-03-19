#!/usr/bin/env bash


set -e;

echo "Checking if Homebrew is already installed..."; 

# Checks if Homebrew is installed
if test ! $(which brew); then
	echo "Installing Homebrew...";
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	echo "Homebrew installed!";
else
	echo "Homebrew is already installed...";
	echo "Updating Homebrew...";
	brew update

	echo "Upgrading Homebrew...";
	brew upgrade

	echo "Cleanup Homebrew...";
	brew cleanup
fi

