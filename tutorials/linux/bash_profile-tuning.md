.bash_profile tuning
======

Create a file named `.bash_profile` in home folder of Linux user.

To switch to users' home folder use:
```shell
cd ~
```

### Enable history completion with up and down arrows:
```bash
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'
```

### Enable case-insensitive completions (tab key):
```bash
bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"
```

### Enable xterm colors:
```bash
export TERM='xterm-256color'

export CLICOLOR=1
export LSCOLORS='BxBxhxDxfxhxhxhxhxcxcx'
```

### Add even more colors (using famous [solarized theme](http://git.io/solarized-colors)):
```bash
if tput setaf 1 &> /dev/null; then
  tput sgr0;
  bold=$(tput bold);
  reset=$(tput sgr0);
  black=$(tput setaf 0);
  blue=$(tput setaf 33);
  cyan=$(tput setaf 37);
  green=$(tput setaf 64);
  orange=$(tput setaf 166);
  purple=$(tput setaf 125);
  red=$(tput setaf 124);
  violet=$(tput setaf 61);
  white=$(tput setaf 15);
  yellow=$(tput setaf 136);
else
  bold='';
  reset="\e[0m";
  black="\e[1;30m";
  blue="\e[1;34m";
  cyan="\e[1;36m";
  green="\e[1;32m";
  orange="\e[1;33m";
  purple="\e[1;35m";
  red="\e[1;31m";
  violet="\e[1;35m";
  white="\e[1;37m";
  yellow="\e[1;33m";
fi;
```

### Set terminal title and prompt format to `username at hostname in current/path`:
```bash
userStyle="${orange}";
hostStyle="${yellow}";

# Set the terminal title and prompt.
PS1="\[\033]0;\W\007\]"; # working directory base name
PS1+="\[${bold}\]\n"; # newline
PS1+="\[${userStyle}\]\u"; # username
PS1+="\[${white}\] at ";
PS1+="\[${hostStyle}\]\h"; # hostname
PS1+="\[${white}\] in ";
PS1+="\[${green}\]\w"; # current path
PS1+="\n";
PS1+="\[${white}\]\$ \[${reset}\]"; # `$` (and reset color)
export PS1;

# Move prompt to second line
PS2="\[${yellow}\]→ \[${reset}\]";
export PS2;
```

### Apply changes:
```shell
source ~/.bash_profile
```

