# Vim Installation
To install vim with the `+clipboard` feature follow these steps. <br>
Make sure you have the following dependencies installed.

- `git`
- `libtool`
- `ncurses`
- `libxt` for the `+clipboard` feature

> On openSUSE 
> ```
> $ sudo zypper in git libtool ncurses-devel libXt-devel
> ```

Uninstall the current `vim` package if any
> On openSUSE 
>```
> $ sudo zypper remove --clean-deps vim
>```

Clone the github repo.
>```
> $ git clone https://github.com/vim/vim
>```

Enter the `vim/src` folder
>```
> $ make
>```

To check if there are any missing dependencies run
>```
> $ make test
>```

To finally install Vim
>```
> $ sudo make install
>```
Visit Vim's user manual with `:help user-manual`.
[Vim Docs](https://github.com/vim/vim/blob/master/src/INSTALL)

# Vim Configuration

Visit [VimAwesome](https://vimawesome.com/) to find new plugins.

Copy the `.vimrc` file in your home directory.

### Install vim-plug

Download and install `vim-plug`
>```
>$ curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
>```

### Install your plugins
For each plugin listed in the `.vimrc` file look it up on [VimAwesome](https://vimawesome.com/) for instructions

Run `:PlugInstall` in vim to install and `:PlugUpdate` to update the plugins in your `.vimrc`
