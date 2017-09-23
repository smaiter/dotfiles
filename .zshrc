export EDITOR='vim'
#source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=241';
#autocompletitions and path autocompl. ex cd /u/sh in cd /user/share
autoload -U compinit && compinit
compinit

autoload -U colors && colors
#prompt line settings
#autoload -U promptinit
#promptinit

# precmd () {
# statusbar () {
#   BAT_CHARG=$(acpi | awk {'print $4'});
#   FREE_SPACE=$(df -h | egrep /sda6 | awk {'print $4'});
#   echo $FREE_SPACE $BAT_CHARG%% 
# }
PROMPT="%{$fg_bold[green]%}[%2/]%# %b"
#RPROMPT=$(statusbar)
#}

#menu completitions
zstyle ':completion:*' menu select

#without cd
setopt AUTO_CD

#to correct incorrectly typed commands
setopt CORRECT_ALL

export LS_COLORS='no=00:fi=00;37:di=38;5;111;1:ln=04;36:pi=33:so=01;35:do=01;35:bd=33;01:cd=33;01:or=31;01:su=37:sg=30:tw=30:ow=34:st=37:ex=00;31:*.mp4=38;5;212:*.mkv=38;5;212:*.pdf=00;33:*.djvu=00;33:*.txt=00;33:*.c=01;31:'
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

#alias -s
alias -s {avi,mpeg,mpg,mov,m2v,mkv}=mpv
alias -s {c,s}=vim 
#alias
alias m1='udevil mount /dev/sdb1 /media/usb1'
alias u1='udevil unmount /dev/sdb1 && echo Unmount /dev/sdb1'
alias m2='udevil mount /dev/sdc1 /media/usb2'
alias u2='udevil unmount /dev/sdc1 && echo Unmount /dev/sdc1'
alias m3='udevil mount /dev/sdd1 /media/usb3'
alias u3='udevil unmount /dev/sdd2 && echo Unmount /dev/sdd1'

#alias ls
alias my_ls='ls -X --color=always --group-directories-first'
alias ll='my_ls  -oX --human-readable | more' # -X- sort by extension; -o- long list, without group;
alias la='my_ls -oXa --human-readable | more'

#custom cd                        
 c() 
{ cd $1;                             
  my_ls;                                
}                                  
alias cd="c" 

#hash
hash -d usb1=/media/usb1
hash -d usb2=/media/usb2
hash -d mic=/home/smaiter/microcontroller/stm32f103x/

#aliases for editing and accepting config files
alias ezsh='$EDITOR ~/.zshrc' #edit .zshrc
alias szsh='source ~/.zshrc' #accept editing .zshrc
alias azsh='source ~/.zshrc' #2 way to accept editing .zshrc
alias exres='$EDITOR ~/.Xresources'
alias axres='xrdb ~/.Xresources'
alias etmux='$EDITOR ~/.tmux.conf'
