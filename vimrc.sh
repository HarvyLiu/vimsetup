echo "NOTE: THIS SCRIPT IS ONLY FOR DEBIAN BASED LINUX OS or WSL or VMs, if you wish to have others, i suggest you ask ChatGPT"

read -p "Continue? [y/n] " answer
if [[ $answer == [Yy]]]; then
  echo "Starting to install the followings"
  # continue with the script
  cd ~
  cp .vimrc .vimrc.backup
  echo 'Your original setup has been backuped. .vimrc >> .vimrc.backup'
  sudo apt update
  sudo apt install nodejs npm -y
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
  source ~/.bashrc
  nvm install --lts
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  sudo apt-get install fonts-powerline
  cat vimrc.txt > .vimrc
  echo 'Process is done! Now go to your Vim and Run :PlugInstall, ignore the errors, after you finish installing, quit and return to vim, the errors will be gone by the point. Also please do :CocInstall <theNameOfTheLanguagePackage>, if you do not know what the package name is, just search on Google.'
  echo 'THANK YOU FOR USING MY FIRST PIECE OF BASH CODE, BY FAR MY BEST "PROJECT". cya in later projects that might or might not be a thing ~ HarvyLiu'
else
  echo "Process has been stopped"
  exit
  # Stops Process
fi

