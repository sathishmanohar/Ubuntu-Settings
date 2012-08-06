# Config Files and Settings for Linux - Mainly Ubuntu

These files are some settings that I Picked up, along the way of using shell and tools like Git and Vim.

## Remove or Backup .bashrc
Since there is a .bashrc file in the repo, existing .bashrc will cause issues while pulling, so delete it or backup it somewhere

### To delete
rm .bashrc

### To Backup
mv .bashrc .bashrc-backup

## Installation

Initialize a git repo in Home Directory

`cd ~`

`git init`

Now Pull from the repo url to the new repo, creatd at your home directory

`git pull git@github.com:sathishmanohar/Ubuntu-Settings.git`

