Installation:
-------------

    git clone git://github.com/yarko/dotvim.git ~/.vim

Create symlinks:

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc

Switch to the `~/.vim` directory, and fetch submodules:

    cd ~/.vim
    git submodule init
    git submodule update

To add a plugin:
----------------

    chmod +x install.sh
    cp install.sh ~/bin/viminstall

Call with:

    viminstall  ${github_clone_URL}

install.sh is essentially doing this:

    git submodule add http://github.com/someone/vim-some_bundle.git bundle/some_bundle
    echo '    ignore = dirty' >> .gitmodules
    git commit -a -m 'Install some_bundle.vim bundle'


### Further addons

I didn't like that  `vimogen` wasn't tracking submodules (making my setup un-clonable).
I also didn't like the numeric menu aspect, but that's minor.

When I need it, I may add other simple shell scripts to:

 * `vimupdate [optional-target, default: all]`
 * `vimremove [plugin-name]`
 * `vimlist`


General reference:
------------------
   [pathogen-synchronizing](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/)

Why am I doing this?
--------------------

I tried for too long with spf13-vim - too clever, too complicated.
I got tired of files not writing because too many things were running in the background for
"quit" to be processed.
I got tired of `git merge`s for things like `brew` failing after a commit comment (for the same reason).
I got tired of all the ways it wasn't acting like a lean, mean vim.

So, I started with [Justin Lilly's](http://justinlilly.com/vim/vim_and_python.html) basic setup for starter,
all cloned, pushed, and pullable to a new environment/platform.

Much better.

