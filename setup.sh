if [ -d ./.vim/ ]; then
	rm -rf .vim~
	mv .vim .vim~
fi
if [ -f ./.vimrc ]; then
	rm -f .vimrc~
	mv .vimrc .vimrc~
fi
ln -sf dotfiles/.githelpers .
ln -sf dotfiles/.gitconfig .
ln -sf dotfiles/.dir_colors .
ln -sf dotfiles/gemrc ~/.gemrc
