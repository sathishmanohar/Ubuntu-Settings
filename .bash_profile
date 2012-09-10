# some more ls aliases
alias ll='ls -alF'
alias la='ls -Ap'
alias l='ls -CF'
alias c='clear'
alias lp='ls -p'
alias ls='ls -p --color'

#Screen aliases
alias sl="screen -ls"
alias sr="screen -r"

# Rails Specific aliases
alias rs='screen -S rails_server rails s'
alias gu='screen -S guard_screen bundle exec guard'
alias subl='screen -m -d -S sublime_text subl'
alias rsp='bundle exec rspec'
alias spork='screen -S spork_server spork'

# General Program aliases
alias irssi='screen -S irssi_screen irssi'
