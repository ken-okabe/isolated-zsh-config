# isolated-zsh-config

The purpose of this script is to install the Zsh configuration to an existing Zsh environment.

It is important to note that this script will delete the `$HOME/.fonts` directory. Therefore, if any fonts are stored inside this directory, they should be installed globally using a font manager, etc.

The Zsh environment directory is designed to be isolated and should be symlinked to $HOME. 
`.zsh_history` and `.p10k.zsh` will be updated in the installed directory.

It is recommended to place this directory under `$HOME/Documents` etc., for backup. If the directory location is changed, the installation process will need to be repeated.

git clone and move to the directory, and

`sh ./install.sh`

`p10k configure` for [powerlevel10k](https://github.com/romkatv/powerlevel10k) themeing.

