# rm and ls should not use directory/, just directory

echo '=== INSTALLING ZSH ==='

# change directory to the shell file's directory
SCRIPT_DIR=`dirname $0`
cd $SCRIPT_DIR

sudo rm -rf \
$HOME/.zshrc \
$HOME/.zsh_history \
$HOME/.p10k.zsh \
$HOME/.zsh \
$HOME/.fonts

ln -s $(pwd)/homeuser/.zshrc $HOME/.zshrc
ln -s $(pwd)/homeuser/.zsh_history $HOME/.zsh_history
ln -s $(pwd)/homeuser/.p10k.zsh $HOME/.p10k.zsh
ln -s $(pwd)/homeuser/.zsh $HOME/.zsh
ln -s $(pwd)/homeuser/.fonts $HOME/.fonts

sh -c $(pwd)/homeuser/.zsh/powerlevel10k/gitstatus/install

echo 'done.' 

