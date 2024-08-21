#!/bin/bash

# 1. Basic String Comparison
string1="hello"
string2="world"

if [ "$string1" == "$string2" ]; then
  echo "String1 is equal to String2"
else
  echo "String1 is not equal to String2"
fi

# 2. Case-Insensitive String Comparison
if [[ "${string1,,}" == "${string2,,}" ]]; then
  echo "String1 is equal to String2 (case-insensitive)"
else
  echo "String1 is not equal to String2 (case-insensitive)"
fi

# 3. Checking if a string is empty
empty_string=""

if [ -z "$empty_string" ]; then
  echo "The string is empty"
else
  echo "The string is not empty"
fi

# 4. Checking if a string is non-empty
if [ -n "$string1" ]; then
  echo "String1 is non-empty"
else
  echo "String1 is empty"
fi

# 5. String Inequality Check
if [ "$string1" != "$string2" ]; then
  echo "String1 is not equal to String2"
else
  echo "String1 is equal to String2"
fi

# 6. Pattern Matching with Wildcards
filename="example.txt"

if [[ "$filename" == *.txt ]]; then
  echo "The file is a .txt file"
else
  echo "The file is not a .txt file"
fi

# 7. Regular Expression Matching (using =~)
email="user@example.com"

if [[ "$email" =~ ^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$ ]]; then
  echo "The email address is valid"
else
  echo "The email address is invalid"
fi

# 8. Comparing Strings Lexicographically
string3="apple"
string4="banana"

if [[ "$string3" < "$string4" ]]; then
  echo "\"$string3\" comes before \"$string4\" in lexicographical order"
elif [[ "$string3" > "$string4" ]]; then
  echo "\"$string3\" comes after \"$string4\" in lexicographical order"
else
  echo "\"$string3\" and \"$string4\" are equal in lexicographical order"
fi

# 9. String Length Comparison
string5="short"
string6="muchlongerstring"

if [ "${#string5}" -lt "${#string6}" ]; then
  echo "\"$string5\" is shorter than \"$string6\""
elif [ "${#string5}" -gt "${#string6}" ]; then
  echo "\"$string5\" is longer than \"$string6\""
else
  echo "\"$string5\" and \"$string6\" are of equal length"
fi
