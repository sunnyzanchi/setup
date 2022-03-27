export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
. "$HOME/.cargo/env"

# On macOS El Capitan and later, this makes sure brew's installed git
# takes precedence over Apple's installed git
export PATH=/usr/local/bin:$PATH

export PS1="\[\033[38;5;82m\]\u\[$(tput sgr0)\]@\h \w\n\[$(tput sgr0)\]\[\033[38;5;199m\]\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')\[$(tput sgr0)\] \\$ \[$(tput sgr0)\]"
export PS2=" > "

#
# Aliases
# e = edit
alias ebrc="nano ~/.bashrc"
alias sbrc="source ~/.bashrc"
alias c="clear"

# Make Shift + Enter go to newline,
# by binding Control + V, Control + J to Shift + Enter
bind -m vi-command '"\n": self-insert'
bind -m vi-insert '"\n": self-insert'

PATH="$HOME/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="$HOME/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="$HOME/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"$HOME/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=$HOME/perl5"; export PERL_MM_OPT;
