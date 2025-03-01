source /opt/homebrew/share/zsh-abbr/zsh-abbr.zsh
abbr clear-session
echo Applying abbreviation current terminal session...

## git

abbr -S g='git' > /dev/null
abbr -S gb='git branch' > /dev/null
abbr -S gsw='git switch' > /dev/null
abbr -S gst='git status' > /dev/null
abbr -S gco='git checkout' > /dev/null
abbr -S gl='git log' > /dev/null
abbr -S gc='git commit' > /dev/null
abbr -S ga='git add' > /dev/null
abbr -S gd='git diff' > /dev/null
abbr -S gpso='git push origin' > /dev/null
abbr -S gpsc='git push origin $(git branch --show-current)' > /dev/null
abbr -S gplo='git pull origin' > /dev/null
abbr -S gplc='git pull origin $(git branch --show-current)' > /dev/null
