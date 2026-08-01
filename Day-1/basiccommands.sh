#!/bin/bash

echo "Linux Basic Commands Demo"

echo "Current working directory:"
pwd

echo "Creating a sample directory..."
mkdir -p demo

echo "Changing to the demo directory..."
cd demo

echo "Creating a sample file..."
touch notes.txt

echo "Adding content to the file..."
echo "Welcome to Linux Commands" > notes.txt
echo "Learning Linux is fun!" >> notes.txt

echo "Displaying the file contents using cat:"
cat notes.txt

echo "Copying the file..."
cp notes.txt backup.txt

echo "Renaming backup.txt to new.txt..."
mv notes.txt new.txt

echo "Listing the files:"
ls -l

echo "Deleting new.txt..."
rm new.txt

echo "Listing the files:"
ls -l

echo "Moving back to the parent directory..."
cd ..

echo "Removing the project directory and its contents..."
rm -r demo

echo "Creating of empty directory."
mkdir demo

echo "Deleting of empty directory"
rmdir demo

echo "Clear the terminal screen"
clear

echo "Moving back to the parent directory..."
cd ..


