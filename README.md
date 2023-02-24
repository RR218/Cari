# Cari
## A simplified find command written in bash
Cari is a CLI based general file finder that can search for files through out your whole system. <br>
Works well even in root directories.
## Usage: 
"cari (filename)" or "cari (filename) -f (filter)" or "cari (filename) -f (filter) -c" <br>
| Arguement     | Description                                         |
|---------------|-----------------------------------------------------|
|  -f --filter  | Filter the search to reduce unwanted search results |
|  -c --content | Display the contents of the files                   |
|  -h --help    | Display help message                                |

* -f or --filter : Takes a word that can be related to the file searched. Eg: related directory, file extention, general path, etc.
It acts as a filter to reduce unanted search results.
* -c or --content : Will display the contents of the files.
* -h or --help : Will show you the help message.
#### Please give it some time to process as some file names are generally used in more than one directory.
![Example](https://github.com/RR218/Cari/blob/main/images/Screenshot1.png)
## Install
**Clone the git repo:**
```
git clone https://github.com/RR218/Cari.git
```
**Change directory into cari folder:**
```
cd Cari
```
**Install requirements.txt:**
```
pip install -r requirements.txt
```
**Make cari.sh an executable:**
```
chmod +x cari.sh
```
**Copy cari.sh to $PATH and rename cari.sh to cari:** <br>
!!! Sudo privlages needed !!!
```
cp cari.sh usr/bin/cari
```
## Usage
```
cari foo
```
-or-
```
cari foo -f bar
```
-or-
```
cari foo -c
```
-or-
```
cari foo -f bar -c
```
## To change syntax highlighting theme
**Find available themes at**
```
https://pygments.org/styles/
```
Using a code editor, replace the default nord theme with the themes of your choosing at line number 61 of cari.sh <b> 
![Example](https://github.com/RR218/Cari/blob/main/images/screenshot2.png)
<br>
**eg. from nord to paraiso-dark:** <br>
From
```
pygmentize -f 256 -O style=nord -g "$file" | sed 's/^/    /'
```
To
```
pygmentize -f 256 -O style=paraiso-dark -g "$file" | sed 's/^/    /'
```
**Replace the current file in $PATH to the newly updated file:**
!!! Sudo privlages needed !!!
```
cp cari.sh /usr/bin/cari
```
## Uninstall
**To uninstal cari from your system:**
!!! Sudo privlages needed !!!
```
rm /usr/bin/cari
```

## FYI:
"Cari" is a Malay word that translates to "Find" in English.
