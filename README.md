Installation:

    git clone git://github.com/yarko/dotvim.git ~/.vim

Create symlinks:

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc

Switch to the `~/.vim` directory, and fetch submodules:

    cd ~/.vim
    git submodule init
    git submodule update

General reference:

   [pathogen-syncgronizing](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/)
