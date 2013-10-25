ichi-vim
========

From your homedirectory (on Linux/Mac OSX):

* `git clone git://github.com/Ichi1234567/ichi-vim.git`
* `ln -sfn ichi-vim .vim`
* `ln -sfn ichi-vim/vimrc .vimrc`
* `cd .vim; make install`


  > Note: if you already have `~/.vim` `~/.vimrc` REMOVE THEM (you might want to backup them first :)

* create `~/.vimrc.before` or `~/.vimrc.after` if you want to have some
  local/personal settings you don't want to commit into the repo. see "[Local Configuration](#local)"


  > IMPORTANT: **always** add a `colorscheme` to your `~/.vimrc.after` file.
  > Even if you use the defaults scheme add `colorscheme default`. Othewise you
  > will get a highlighting error `"E411: highlight group not found: Normal"`
  > during vim startup.
