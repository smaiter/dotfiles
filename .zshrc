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

# precmd () {
#  bg_jobs ()
#  {
#    bg_jobs_var=$(jobs | sed '$!d' | awk {'print $1'})
#    echo $bg_jobs_var
#  }
#}
PROMPT="%{$fg_bold[cyan]%}[%2/]%{$fg_bold[blue]%} >> %b"
RPROMPT="%{$fg_bold[green]%}[%j]%b"
#RPROMPT=$(bg_jobs)
#}

#menu completitions
zstyle ':completion:*' menu select

#without cd
setopt AUTO_CD

#to correct incorrectly typed commands
setopt CORRECT_ALL

####### HISTORY #######
HISTFILE=~/.zsh_history
HISTSIZE=5000
SAVEHIST=5000

#add command execution time to history
setopt extended_history

#update history after Enter-key pressed
setopt inc_append_history

#all terminal session common history
setopt share_history

#ignor all duplicates, space started lines, empty line
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_reduce_blanks

#colors
export LS_COLORS='no=00:fi=00;37:di=1;34:ln=04;36:pi=33:so=01;35:do=01;35:bd=33;01:cd=33;01:or=31;01:su=37:sg=30:tw=30:ow=34:st=37:ex=00;31:*.mp4=35:*.mkv=35:*.pdf=33:*.djvu=33:*.txt=33:*.c=01;31:*.h=00;34:'
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


alias tr_v='sdcv -u "Apresyan (En-Ru)" --color' #alias for tr (translate En-Ru)
alias tre_v='sdcv -u "Universal (Ru-En)" --color' #alias for tre (translate Ru-En)
alias tra_v='sdcv --color' #alias for tra (translate all dict)

#func translate En-Ru
tr()
{ tr_v $1 | more;}

#func translate Ru-En
tre()
{ tre_v $1 | more;}

#func translate all dictionary
tra()
{ tra_v $1 | more;}

#aliases for mocp
alias moi='mocp -i | grep -i ^title' #mocp a song title info
alias mos='mocp -s'
alias mop='mocp -p'

#experemental aliases and fucntions for quick operations
alias gusb='cd /media/usb1 | more'
alias gpr='cd /home/smaiter/programming/C\ programming'
ydl() {cp $1 /home/smaiter/doc/linux/ $2}
ydp() {cp $1 /home/smaiter/doc/programming/ $2}
ydv() {cp $1 /home/smaiter/doc/vim/ $2}

#aliases for editing and accepting config files
alias evim='$EDITOR ~/.vimrc' #edit .vimrc
alias ezsh='$EDITOR ~/.zshrc' #edit .zshrc
alias szsh='source ~/.zshrc' #accept editing .zshrc
alias azsh='source ~/.zshrc' #2 way to accept editing .zshrc
alias exres='$EDITOR ~/.Xresources'
alias axres='xrdb ~/.Xresources'
alias etmux='$EDITOR ~/.tmux.conf'
alias ei3='$EDITOR ~/.config/i3/config'
