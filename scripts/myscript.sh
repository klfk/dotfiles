#!/bin/bash

# This line prints the current date and time
echo "Current date and time: $(date)"

# This line creates a new directory named "test"
mkdir test

# This line changes into the "test" directory
cd test

# This line creates a new file named "test.txt" and writes the text "Hello, World!" to the file
echo "Hello, World!" > test.txt

# This line prints the contents of the "test.txt" file
cat test.txt

# This line changes back to the parent directory
# The 'cd ..' command is used to change to the parent directory (i.e., the directory one level up)
cd ..

# This line deletes the "test" directory
rm -r test
