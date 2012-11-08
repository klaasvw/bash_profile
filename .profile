# Prompt
export PS1="[\D{%D} \A \u:\w]$ "
# Aliases
alias cdp="cd /Users/klaas/dotProjects"
alias dct="drush cc theme-registry"
alias dca="drush cc all"
alias ls="ls -la"
# Generate Base64 string of file and copy to clipboard.
b64 () { openssl base64 < $* | tr -d '\n' | pbcopy; }
# Download and install drupal module.
ddi () { drush dl "$*" && drush en -y "$*" && dca; }
# Install drupal site with profile and mysql db as argument.
dsi () { drush si $0 --locale=nl --db-url="mysql://root:root@localhost/$1"; }
# Environment variables
export EDITOR=vi
# PATH
export PATH=/Applications/MAMP/bin/php/php5.3.14/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/git/bin:$PATH
export PATH=$PATH:/Applications/MAMP/Library/bin
