#!/usr/bin/bash

# Locate a file in the system
usage() {
  echo "Usage: cari <filename> or cari <filename> -f <filter> "
  echo "  -f: takes an optional word that can relate to the search to reduce unwanted resaults"
  echo "  --help: display this help message"
}

if [ "$1" == "--help" ]; then
  usage
  exit 0
fi

if [ -z "$1" ]; then
  echo "Error: filename argument is required"
  usage
  exit 1
fi

filename="$1"
shift

second_arg=""

while [ "$#" -gt 0 ]; do
  case $1 in
    -f)
      shift
      second_arg="$1"
      ;;
    *)
      echo "Error: invalid argument $1"
      usage
      exit 1
      ;;
  esac
  shift
done

# Use find to search for files whose names contain the provided string
# The "-name" option limits the search to files with the specified name pattern
# The "-print" option prints the path of each file found
output=$(find / -name "*$filename*" -print 2>/dev/null | while read file; do
  # Print the path of the file
  echo -e "\033[32mFound file: $file\033[0m"
  
  # Print the directory containing the file
  dirname "$file"
  
  # Print the contents of the file, if it's a text file
  # if file "$file" | grep -q "text"; then
    # echo "File contents:"
    # cat "$file"
  # fi
  
  echo
done)

if [ -z "$output" ]; then
  echo "Error: no files found with name containing \"$filename\""
  exit 1
else
  echo "$output" | if [ -n "$second_arg" ]; then grep "$second_arg"; else cat; fi
  exit 0
fi
