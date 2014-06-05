Installation:

    git clone git://github.com/yarko/dotvim.git ~/.vim

Create symlinks:

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc

Switch to the `~/.vim` directory, and fetch submodules:

    cd ~/.vim
    git submodule init
    git submodule update

To add a plugin:

    chmod +x install.sh
    cp install.sh ~/bin/viminstall

Call with:

    viminstall  ${github_clone_URL}

install.sh is essentially doing this:

    git submodule add http://github.com/someone/vim-some_bundle.git bundle/some_bundle
    echo '    ignore = dirty' >> .gitmodules
    git commit -a -m 'Install some_bundle.vim bundle'

General reference:

   [pathogen-syncgronizing](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/)
