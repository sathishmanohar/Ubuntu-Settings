# Config Files and Settings for Linux - Mainly Ubuntu

These files are some settings that I Picked up, along the way of using shell 
and tools like Git and Vim.

## Remove or Backup .bashrc
Since there is a .bashrc file in the repo, existing .bashrc will cause issues 
while pulling, so delete it or backup it somewhere

### To delete
rm .bashrc

### To Backup
mv .bashrc .bashrc-backup

## Installation

Initialize a git repo in Home Directory

`sh cd ~`

`sh git init`

Now Pull from the repo url to the new repo, created at your home directory

```sh git remote add origin git://github.com/sathishmanohar/Ubuntu-Settings.git
git pull origin master```

Now I know having your home directory as a git repository is annoying
So, I generally rename the .git directory to temperorily get rid of git

`sh mv .git .git-dump`

I enter the following command, To bring back the repository to make changes

`sh mv .git-dump .git`
