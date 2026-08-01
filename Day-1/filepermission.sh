#!/bin/bash

echo "Linux File Permissions Demo"

echo "Creating a sample file in a separate directory for testing..."
mkdir testing
cd testing

touch sample.txt

echo "Checking the default permissions of the file:"
ls -l

echo "By default, a new file has permission 644 (rw-r--r--)"
echo "Refer to the Linux permissions diagram to understand the permission bits."

echo "Changing permissions to read and write for everyone (666)..."
chmod 666 sample.txt    # Equivalent to: chmod a+rw sample.txt or chmod ugo+rw sample.txt

echo "Checking the updated permissions:"
ls -l

echo "Changing permissions back to 644 (owner: read/write, group: read, others: read)..."
chmod 644 sample.txt    # Equivalent to: chmod u=rw,g=r,o=r sample.txt

echo "Checking the updated permissions:"
ls -l