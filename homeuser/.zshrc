# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# manually add below-------------------------
autoload -U compinit
compinit 

export HISTFILE=$HOME/.zsh_history
export HISTSIZE=100000         
export SAVEHIST=100000     
   
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt share_history
setopt correct
setopt auto_cd

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh

bindkey -e
bindkey '^[[A' history-beginning-search-backward
bindkey '^[[B' history-beginning-search-forward

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#555555"

alias @='cd ~/Documents/@shortcuts/ && ls -la -F --color=auto --group-directories-first'

export DOTNET_ROOT=$HOME/.dotnet
export PATH=$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools



