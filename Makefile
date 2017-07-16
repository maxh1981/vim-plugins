FILES = \
	${HOME}/.vimrc

DIRS = \
	${HOME}/.vim/backup \
	${HOME}/.vim/swap \
	${HOME}/.vim/undo \
	${HOME}/.vim/bundle/vundle

.PHONY: all
all: setup

.PHONY: setup
setup: ${FILES} ${DIRS}
	vim +PluginUpdate +q +q

.PHONY: clean
clean:
	rm -rf \
		${HOME}/.vimrc \
		${HOME}/.vim

${HOME}/.vimrc: vimrc
	cp $< $@

${HOME}/.vim/backup:
	mkdir -p $@

${HOME}/.vim/swap:
	mkdir -p $@

${HOME}/.vim/undo:
	mkdir -p $@

${HOME}/.vim/bundle/vundle:
	git clone https://github.com/gmarik/vundle.git $@
