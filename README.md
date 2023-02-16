# Cari
### A simplified find command written in bash
Cari is a CLI based general file finder that can search for files through out your whole system. <br>
Works well even in root directories.
### Usage: cari (filename) or cari (filename) -f (filter)
Please give it some time to process as some file names are generally used in more than one directory. <br>
-f : takes a word that can be related to the file searched. Eg: related directory, file extention, general path, etc. <br>
It acts as a filter to reduce unanted search results

### Install
Clone the git repo:
```
git clone https://github.com/RR218/Cari.git
```
Change directory into cari folder:
```
cd cari
```
Make cari.sh an executable:
```
chmod +x cari.sh
```
Copy cari.sh to path and rename cari.sh to cari:
```
sudo cp cari.sh usr/bin/cari
```
Usage:
```
cari foo
or
cari foo -f bar
```
### Uninstall
To uninstal cari from your system:
```
sudo rm /usr/bin/cari
```

## FYI:
"Cari" is a malay word that translates to "Find" in english.
