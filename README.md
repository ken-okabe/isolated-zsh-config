# isolated-zsh-config

1. This script is designed to install the Zsh configuration into an existing Zsh environment. Please note that this script will delete the `$HOME/.fonts` directory. If you have any fonts stored in this directory, it is recommended to install them globally using a font manager.

2. The Zsh environment directory is designed to be isolated and should be symlinked to `$HOME`. The `.zsh_history` and `.p10k.zsh` files will be updated in the installed directory.

3. It is recommended to place this directory under `$HOME/Documents` or similar for backup purposes. If the location of the directory changes, the installation process will need to be repeated.

4. To install, clone the repository and move to the directory, then run `sh ./install.sh`.

5. Run `p10k configure` for [powerlevel10k](https://github.com/romkatv/powerlevel10k) themeing.
