#the following is my own config for fish
#my defined functions
#delete .out files when enter leetcode directory, but i failed
function clearexe -dirstack
       if test (pwd) = "/root/leetcode"
           find . -name "*.out" -type f -print0 | xargs -0 rm
           echo "Deleted all .out files in /leetcode"
       end
end
#function fishconfig
#    nvim ~/.config/fish/config.fish
#end
alias fishconfig='nvim ~/.config/fish/config.fish'
alias updatefish='source ~/.config/fish/config.fish'
alias cdworkdir='cd /mnt/e/'

function code
    cd ~/leetcode
    nvim
end
function backup
    cp -r ~/leetcode /mnt/e/00-C++/
    echo "successful!"
end
function printfunction
    echo "backup"
    echo "code"
    echo "fishconfig"
    echo "updatefish"
    echo "cdworkdir"
    echo "clearexe"
end
function fish_prompt
    echo -n (set_color green)"Ubuntu-22.04""@"(set_color bryellow)(pwd)(set_color red)">>>"
end
