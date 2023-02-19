# Cari
### A simplified find command written in bash
Cari is a CLI based general file finder that can search for files through out your whole system. <br>
Works well even in root directories.
### Usage: cari (filename) or cari (filename) -f (filter)
Please give it some time to process as some file names are generally used in more than one directory. <br>
-f : takes a word that can be related to the file searched. Eg: related directory, file extention, general path, etc. <br>
It acts as a filter to reduce unanted search results <br>
-c : will cat the contents of the files <br>
--help : will show you the help message.

![Example](https://github.com/RR218/Cari/blob/main/Image/Screenshot_2023-02-16_21-53-24.png)
### Install
Clone the git repo:
```
git clone https://github.com/RR218/Cari.git
```
Change directory into cari folder:
```
cd Cari
```
install requirements.txt
```
pip install -r requirements.txt
```
Make cari.sh an executable:
```
chmod +x cari.sh
```
Copy cari.sh to $PATH and rename cari.sh to cari:
```
sudo cp cari.sh usr/bin/cari
```
Usage:
```
cari foo
or
cari foo -f bar
or
cari foo -c
or
cari foo -f bar -c
```
### Uninstall
To uninstal cari from your system:
```
sudo rm /usr/bin/cari
```

## FYI:
"Cari" is a malay word that translates to "Find" in english.
