# Cari
## A simplified find command written in bash
Cari is a CLI based general file finder that can search for files through out your whole system. <br>
Works well even in root directories.
## Usage: 
"cari (filename)" or "cari (filename) -f (filter)" or "cari (filename) -f (filter) -c" <br>
| Arguement    | Description                                         |
|--------------|-----------------------------------------------------|
|    -f        | Filter the search to reduce unwanted search results |
|    -c        | Display the contents of the files                   |
|  --help      | Display help message                                |

-f : takes a word that can be related to the file searched. Eg: related directory, file extention, general path, etc.
It acts as a filter to reduce unanted search results <br>
-c : will display the contents of the files <br>
--help : will show you the help message. <br>
Please give it some time to process as some file names are generally used in more than one directory. <br>

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
**install requirements.txt:**
```
pip install -r requirements.txt
```
**Make cari.sh an executable:**
```
chmod +x cari.sh
```
**Copy cari.sh to $PATH and rename cari.sh to cari:**
```
sudo cp cari.sh usr/bin/cari
```
**Usage:**
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
**find available themes at:**
```
https://pygments.org/styles/
```
Using a code editor, replace the default nord theme with the themes of your choosing at line number 61 of cari.sh <b> 
![Example](https://github.com/RR218/Cari/blob/main/images/screenshot2.png)
<br>
**eg. from nord to paraiso-dark:**
```
from
pygmentize -f 256 -O style=nord -g "$file" | sed 's/^/    /'
to
pygmentize -f 256 -O style=paraiso-dark -g "$file" | sed 's/^/    /'
```
**Replace the current file in $PATH to the newly updated file:**
```
sudo cp cari.sh /usr/bin/cari
```
## Uninstall
**To uninstal cari from your system:**
```
sudo rm /usr/bin/cari
```

## FYI:
"Cari" is a malay word that translates to "Find" in english.
