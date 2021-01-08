# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

alias grep='grep --color=auto'
alias l="less -R"
alias ll="ls -lh --time-style=long-iso"
alias ls="ls --color=auto"
alias mv='mv -i'
alias r='fc -s'
alias rm='rm -I'

export EDITOR=vim

shopt -s checkwinsize
shopt -s globstar

export PATH=$PATH:$HOME/.dotfiles/bin:$HOME/.local/bin:$HOME/bin

export HISTIGNORE='&:ls:ll:history*'
export HISTCONTROL='ignoreboth:erasedups'
export HISTTIMEFORMAT="[%F %T] "
export HISTSIZE=3000

txtblk='\[\e[0;30m\]' # Black - Regular
txtred='\[\e[0;31m\]' # Red
txtgrn='\[\e[0;32m\]' # Green
txtylw='\[\e[0;33m\]' # Yellow
txtblu='\[\e[0;34m\]' # Blue
txtpur='\[\e[0;35m\]' # Purple
txtcyn='\[\e[0;36m\]' # Cyan
txtwht='\[\e[0;37m\]' # White
bldblk='\[\e[1;30m\]' # Black - Bold
bldred='\[\e[1;31m\]' # Red
bldgrn='\[\e[1;32m\]' # Green
bldylw='\[\e[1;33m\]' # Yellow
bldblu='\[\e[1;34m\]' # Blue
bldpur='\[\e[1;35m\]' # Purple
bldcyn='\[\e[1;36m\]' # Cyan
bldwht='\[\e[1;37m\]' # White
txtrst='\[\e[0m\]' # Text Reset

case "$UID" in
	0) userc=$txtred ;;
	*) userc=$txtgrn ;;
esac
export PS1="${bldylw}[${userc}\u${txtgrn}@\h ${txtblu}\w ${bldylw}]"'\$'"${txtrst} "

unset txtblk txtred txtgrn txtylw txtblu txtpur txtcyn txtwht \
	bldblk bldred bldgrn bldylw bldblu bldpur bldcyn bldwht txtrst userc

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
