# Initial cloning

```
git clone --recursive https://github.com/Jajauma/dotfiles.git 
```

# Decrypt secret files

On Linux run
```
.tools/transcrypt/transcrypt
```
and provide required cipher and password. On Git-For-Windows, run
```
& 'C:\Program Files\Git\bin\bash.exe' .\.tools\transcrypt\transcrypt
```

# Symlink required files or directories

For example,
```
ln -sf dotfiles/ssh/.ssh && chmod 700 ~/.ssh && chmod 600 ~/.ssh/*
ln -sf dotfiles/git/.config/git ~/.config/git
```
On Windows, use directory junctions:
```
New-Item -ItemType Junction -Path .ssh -Target .\dotfiles\ssh\.ssh
New-Item -ItemType Junction -Path .config\git -Target .\dotfiles\git\.config\git
```
