if [ -d ./.vim/ ]; then
	rm -rf .vim~
	mv .vim .vim~
fi
if [ -f ./.vimrc ]; then
	rm -f .vimrc~
	mv .vimrc .vimrc~
fi
ln -sb dotfiles/.vimrc .
ln -sf dotfiles/.vim .
ln -sf dotfiles/.githelpers .
ln -sf dotfiles/.gitconfig .

