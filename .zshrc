# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Created by newuser for 5.9
clear

#aliasses
alias neovisualimproved=nvim

#configurations for builtin
_comp_options+=(globdots)
setxkbmap -layout se
setxkbmap -option 
HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000
setopt appendhistory

## vi mode
bindkey -v
export KEYTIMEOUT=1


export PATH=~/.programs/scripts/:${PATH}

#configurations for plugins

## Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins ### initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' ### Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} ### Use beam shape cursor for each new prompt.

# Use lf to switch directories and bind it to ctrl-o
lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}

lfcdwid() lfcd
zle -N lfcdwid
bindkey '^o' lfcdwid


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
 [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
 source ~/powerlevel10k/powerlevel10k.zsh-theme
  source ~/powerlevel10k/powerlevel10k.zsh-theme

# startup commands:

#plugin sourcing
#source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
source ~/.config/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source ~/.config/zsh/plugins/zsh-autosuggestions-master/zsh-autosuggestions.plugin.zsh
source ~/.config/zsh/plugins/zsh-syntax-highlighting-master/zsh-syntax-highlighting.plugin.zsh

## run apps with keybind
clearwid() clear
zle -N clearwid
neofetchwid() neofetch
zle -N neofetchwid


bindkey "" neofetchwid
bindkey "^[c" clear-screen


## Use vim keys in tab complete menu:

bindkey -s '^H' '^[[D'
bindkey -s '^J' '^[[B'
bindkey -s '^K' '^[[A'
bindkey -s '^L' '^[[C'



bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history


bindkey -v '^?' backward-delete-char
bindkey '^H' backward-kill-word
bindkey -s '	' '^[[B'
bindkey -s '^[[Z' '^[[D'
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char
bindkey  "^[[3;5~"  delete-word


bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word

bindkey "^L" forward-char

