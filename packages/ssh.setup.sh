#!/bin/zsh

# https://help.github.com/articles/generating-ssh-keys)
if [[ ! -f $HOME/.ssh/id_rsa ]]
then
  echo_title "Generating an SSH key (you don't have any)..."
  mkdir -p $HOME/.ssh
  cd $HOME/.ssh
  ssh-keygen -t rsa -C $(git config --global --get user.email)
  pbcopy < $HOME/.ssh/id_rsa.pub
  echo "Generated SSH public key have been placed in your clipboard."
  echo "Press return to go open GitHub SSH settings to paste it over there."
  read -k
  open "https://github.com/settings/ssh"
fi

brewinstall ssh-copy-id