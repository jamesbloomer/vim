#!/usr/bin/env bash

# From https://raw.githubusercontent.com/camfowler/vim/master/pack/install.sh

# Create new folder in ~/.vim/pack that contains a start folder and cd into it.
#
# Arguments:
#   package_group, a string folder name to create and change into.
#
# Examples:
#   set_group syntax-highlighting
#
function set_group () {
  package_group=$1
  path="$HOME/.vim/pack/$package_group/start"
  mkdir -p "$path"
  cd "$path" || exit
}

# Clone or update a git repo in the current directory.
#
# Arguments:
#   repo_url, a URL to the git repo.
#
# Examples:
#   package https://github.com/tpope/vim-endwise.git
#
function package () {
  repo_url=$1
  expected_repo=$(basename "$repo_url" .git)
  if [ -d "$expected_repo" ]; then
    cd "$expected_repo" || exit
    result=$(git pull --force)
    echo "$expected_repo: $result"
  else
    echo "$expected_repo: Installing..."
    git clone -q "$repo_url"
  fi
}

(
set_group colorscheme
package https://github.com/morhetz/gruvbox.git &
wait
) &

(
set_group tmux
package https://github.com/christoomey/vim-tmux-navigator.git &
package https://github.com/edkolev/tmuxline.vim.git &
wait
) &

(
set_group statusline
package https://github.com/vim-airline/vim-airline.git &
package https://github.com/vim-airline/vim-airline-themes.git &
wait
) &

(
set_group syntax
package https://github.com/w0rp/ale.git &
package https://github.com/fatih/vim-go.git &
package https://github.com/plasticboy/vim-markdown.git &
package https://github.com/slim-template/vim-slim.git &
package https://github.com/lifepillar/vim-mucomplete.git &
package https://github.com/hashivim/vim-terraform &
wait
) &

(
set_group misc
package https://github.com/MattesGroeger/vim-bookmarks.git &
package https://github.com/tpope/vim-obsession.git &
package https://github.com/airblade/vim-gitgutter.git &
package https://github.com/majutsushi/tagbar.git &
package https://github.com/Konfekt/FastFold.git &
package https://github.com/powerman/vim-plugin-AnsiEsc.git &
package https://github.com/nazo/pt.vim.git &
package https://github.com/tpope/vim-scriptease.git &
package https://github.com/scrooloose/nerdcommenter.git &
wait
) &

wait
