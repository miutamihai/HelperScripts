#!/bin/bash

while getopts ":he:" opt; do
  case ${opt} in
    h )
      echo "Usage:"
      echo "    ./create_git_ssh_key.sh -h                      Display this help message."
      echo "    ./create_git_ssh_key.sh -e [email]              Create and add ssh key."
      exit 0
      ;;
    e )
      sudo apt install xclip -y
      echo "Press enter when prompted"
      ssh-keygen -t rsa -b 4096 -C $OPTARG
      eval "$(ssh-agent -s)"
      ssh-add ~/.ssh/id_rsa
      xclip -selection clipboard < ~/.ssh/id_rsa.pub
      echo "Done! Your new key has been added to your clipboard."
      ;;
    : )
      echo "Invalid option: $OPTARG requires an argument" 1>&2
      ;;
    \? )
      echo "Invalid Option: -$OPTARG" 1>&2
      exit 1
      ;;
  esac
done
