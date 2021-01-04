alias cpwd="pwd | tr -d '\n' | xclip -selection c && echo 'pwd copied to clipboard'"

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias ll="ls -lhS"

alias gs="git status ."
alias gp="git pull"

//dtbtodts.sh
echo "xxx.sh xxx.dts xxx.dtb"
DTS=$1
DTB=$2
dtc -I dtb -O dts -o "$1" "$2"

//jsed.sh
echo "jsed.sh old new"

DIR=$(pwd)
echo "$DIR"
cd $DIR

grep -rl $1 .| xargs sed -i "s/$1/$2/g" 


