# Navigation
alias ..='cd ..'
alias ....='cd ../..'

# Listing files
alias ls='ls --color=auto --group-directories-first' # Default listing
alias la='ls -A --color=auto --group-directories-first'  # All files and directories
alias ll='ls -l --color=auto --group-directories-first'  # Long format
alias lt='ls -aT --color=auto --group-directories-first' # Tree listing

# Listing directories
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'

# Grepping
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='--color=auto' 

# Adding flags
alias cp='cp -i' # Confirm before overwriting something
alias df='df -h' # Human readable size

# Git
alias gg='git pull && git push'      # Pull and push at the same time
alias gp='~/scripts/gitpullpush.sh'  # Add current path, commits, pulls and pushes
alias gzip='~/scripts/zipchanges.sh' # Zips changes from git commits
alias gtree=git log --graph --full-history --all --pretty=format:"%h%x09%d%x20%s"'

# Append to this file
alias makealias='~/scripts/makealiases.sh'

# Web development
alias pa='php artisan'
alias serve='php artisan serve'
alias npmserve='npm run watch'
alias fresh='php artisan migrate:frsh --seed'
alias seed='php artisan db:seed'
alias test='./vendor/bin/phpunit'
alias cda='composer dump-autoload -o'

# Other commands
alias dw='shutdown -h now'
alias uu='apt update && apt upgrade'
