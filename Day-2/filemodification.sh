#!/bin/bash

echo "File modification script"

mkdir -p demo 
cd demo

touch file.txt

echo "This is a sample file." > file.txt  # > write content to file.txt, overwriting any existing content.
echo "Hello world"  >> file  # >> write content to file.txt, appending to any existing content.

cp file.txt file_copy.txt # copy file.txt to file_copy.txt

mv file.txt textfile.txt # move file.txt to textfile.txt

cat textfile.txt # Display the contents of textfile.txt

ls -l


