function dt
set data $HOME/.config/btdt/data
set cmd (cat $data | fzf -d'\t' --with-nth 2 --preview='echo -e "\033[1m"{1}"\033[0m""\n\n"{3}' | cut -f1)
echo $cmd 
eval $cmd 
end
