Dotfiles
ryan@glid3r.io

SeeL https://www.atlassian.com/git/tutorials/dotfiles


Bootstrap a new machine:
```
git clone --bare git@github.com:rghunter/dotfiles.git $HOME/.cfg
git checkout --git-dir=$HOME/.cfg/ --work-tree=$HOME
```
