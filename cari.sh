#!/usr/bin/bash

# Locate a file in the system
usage() {
  echo "Usage: cari <filename> or cari <filename> [-f <filter>] [-c]"
  echo " -f --filter: takes an optional word that can relate to the search to reduce unwanted results"
  echo " -c --content: displays the content of the found file"
  echo " -h --help: display this help message"
}

if [[ "$1" == "--help" || "$1" == "-h" ]]; then
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
content_flag=""

while [ "$#" -gt 0 ]; do
  case $1 in
    -f|--filter)
      shift
      second_arg="$1"
      ;;
    -c|--content)
      content_flag=1
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
# Filter the results with grep if -f is specified
output=$(find / -name "*$filename*" -print 2>/dev/null | if [ -n "$second_arg" ]; then grep "$second_arg"; else cat; fi | while read file; do
  # Print the path of the file
  printf "\033[32mFound file: %s\033[0m\n" "$file"
  
  # Print the directory containing the file
  printf "%s\n" "$(dirname "$file")"
  
  if [ -n "$content_flag" ]; then
    # Print the contents of the file, if it's a text file
    if file "$file" | grep -q "text"; then
      printf "\nFile contents:\n"
      # Available Styles: "zenburn", "nord", "dracula", "a11y-dark", "a11y-high-contrast-dark", "pitaya-smoothie", "github-light", "github-dark", "github-light-colorblind", "github-dark-colorblind", "github-light-high-contrast", "github-dark-high-contrast", "gotthard-dark", "a11y-light", "a11y-high-contrast-light", "gotthard-light", "blinds-light", "blinds-dark", "greative"
      pygmentize -f 256 -O style=nord -g "$file" | sed 's/^/    /'
    else
      printf "\nFile is not a text file. Cannot display contents.\n"
    fi
  fi
  
  printf "\n"
done)

if [ -z "$output" ]; then
  echo "Error: no files found with name containing \"$filename\""
  exit 1
else
  echo "$output"
  exit 0
fi


