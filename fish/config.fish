# Alias
alias ll "exa -ga --icons"
alias llt "exa -gTa --icons --level 3"

alias md mkdir

# app
alias g git

alias tm tmux
alias tmks "tmux kill-session -t"
alias tmat "tmux attach-session -t"
alias tmls "tm ls"

# workspace
alias cls clear
alias clr clear

command -qv nvim && alias vim nvim


# NVM
function __check_rvm --on-variable PWD --description 'Do nvm stuff'
  status --is-command-substitution; and return

  if test -f .nvmrc; and test -r .nvmrc;
    nvm use
  else
  end
end

# Key Bindings
function fish_user_key_bindings
  # peco
  bind \cr peco_select_history # Bind for peco select history to Ctrl+R
  bind \cf peco_change_directory # Bind for peco change directory to Ctrl+F

  # vim-like
  bind \cl forward-char

  # prevent iterm2 from closing when typing Ctrl-D (EOF)
  bind \cd delete-char
end

#peco change directory
function _peco_change_directory
  if [ (count $argv) ]
    peco --layout=bottom-up --query "$argv " | read foo
  else
    peco --layout=bottom-up | read foo
  end
  if [ $foo ]
    cd $foo
    commandline -r ''
    commandline -f repaint
  else
    commandline ''
  end
end

function peco_change_directory
  begin
    ls -ad */|perl -pe "s#^#$PWD/#"|grep -v \.git
    echo $HOME
    echo $HOME/.config
    ls -ad $HOME/.config/*
    ghq list -p
    ls -ad /mnt/g/My\ Drive/Chinchin/Projects/*
  end | sed -e 's/\/$//' | awk '!a[$0]++' | _peco_change_directory $argv
end

#peco select history
function peco_select_history
  if test (count $argv) = 0
    set peco_flags --layout=bottom-up
  else
    set peco_flags --layout=bottom-up --query "$argv"
  end

  history|peco $peco_flags|read foo

  if [ $foo ]
    commandline $foo
  else
    commandline ''
  end
end

