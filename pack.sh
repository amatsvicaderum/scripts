app=(sudo ranger nano neofetch cmatrix htop ncdu bpytop tmux neovim fzf exa bat w3m openssh)
lib=(python nodejs npm)
package=(${app[@]} ${lib[@]})
for i in "${package[@]}"
do
  pacman -Sy "$i" --noconfirm
done

npm=(sass gulp-cli git)
for i in "${npm[@]}"
do
  npm install -g "$i"
done

npm install -g --save-dev gulp  gulp-sass browser-sync

clear
echo "    no more what ifs "
echo ""
neofetch
