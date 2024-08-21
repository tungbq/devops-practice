#!/bin/bash

# 1. Variables and Basic Operations
greeting="Hello, Bash!"
number=42
name="DevOps Engineer"

echo "$greeting"
echo "Your name is $name, and your favorite number is $number."

# 2. Conditionals (if-else)
if [ $number -gt 50 ]; then
  echo "The number $number is greater than 50."
else
  echo "The number $number is less than or equal to 50."
fi

# 3. Loops
echo "Counting from 1 to 5:"
for i in {1..5}; do
  echo "Number: $i"
done

# While loop
counter=5
while [ $counter -gt 0 ]; do
  echo "Countdown: $counter"
  counter=$((counter - 1))
done

# 4. Functions
function greet_user() {
  local user_name=$1
  echo "Hello, $user_name!"
}

greet_user "Alice"

# 5. File Manipulation
file_name="example.txt"

# Create a file and write some text into it
echo "Creating and writing to $file_name"
echo "This is a sample file." > $file_name
echo "Adding another line." >> $file_name

# Read the file
echo "Reading the contents of $file_name"
cat $file_name

# Search for a string in the file
if grep -q "sample" $file_name; then
  echo "The word 'sample' was found in $file_name."
else
  echo "The word 'sample' was not found in $file_name."
fi

# 6. Working with Directories
echo "Creating a directory named 'backup'"
mkdir -p backup

# Move the file to the directory
echo "Moving $file_name to the 'backup' directory"
mv $file_name backup/

# List the contents of the directory
echo "Contents of the 'backup' directory:"
ls backup/

# 7. Using External Commands
echo "Listing all files in the current directory with detailed information:"
ls -la

# Checking disk usage
echo "Checking disk usage:"
df -h

# 8. Handling User Input
read -p "Enter a number: " user_number

if [ $user_number -eq $user_number ] 2>/dev/null; then
  echo "You entered a valid number: $user_number"
else
  echo "That's not a valid number!"
fi

# 9. Using Command-Line Arguments
if [ $# -gt 0 ]; then
  echo "You provided $# argument(s):"
  for arg in "$@"; do
    echo " - $arg"
  done
else
  echo "No arguments provided."
fi

# 10. Handling Errors and Exit Status
command="ls non_existent_file"

if $command 2>/dev/null; then
  echo "Command succeeded."
else
  echo "Command failed with exit status $?."
fi

# 11. Scheduling Tasks with cron (concept)
# Note: To actually use cron, you'd edit the crontab file using `crontab -e`.
echo "To schedule this script to run daily, add the following line to your crontab:"
# echo "0 0 * * * ./practice01.sh"

# 12. Compressing and Archiving Files
echo "Compressing the 'backup' directory into 'backup.tar.gz'"
tar -czf backup.tar.gz backup/

echo "Script execution completed."
