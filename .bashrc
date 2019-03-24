# vim:ts=4:filetype=sh
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Set prompt
PS1='[\u@\h \W]\$ '

################################################################################
### ENV VARS
################################################################################

# dirs
BIN=${HOME}/.local/bin		
CONFIGS=${HOME}/.config		
RUST=${HOME}/.cargo/bin		
SCRIPTS=${HOME}/.local/scripts	
SRC=${HOME}/.local/src	
STEAM_DIR=${HOME}/.steam/root
WALLPAPERS=${HOME}/Pictures/wallpapers
					
# path				
PATH="${SOURCE}:${SCRIPTS}:${BIN}:${RUST}:${PATH}"


# set EDITOR
if [ -e /usr/bin/nvim ]; then
    export EDITOR=/usr/bin/nvim
	alias vimrc="${EDITOR} ${HOME}/.config/nvim/init.vim"
elif [ -e /usr/bin/vim ]; then
    export EDITOR=/usr/bin/vim
	alias vimrc="${EDITOR} ${HOME}/.config/vimrc"
else
    export EDITOR=/usr/bin/vi
	alias vimrc="printf \"INFO - System uses Vi\n\""
fi


# Source aliases
if [ -e ~/.bashrc.aliases ] ; then
   source ~/.bashrc.aliases
fi

export BIN CONFIGS EDITOR PATH SRC SCRIPTS STEAM_DIR WALLPAPERS

################################################################################
### Startup
################################################################################

wal -R
neofetch --distro_shorthand on	\
		--kernel_shorthand on	\
		--gtk3 off				\
		--gtk2 off				\
		--memory_percent on
