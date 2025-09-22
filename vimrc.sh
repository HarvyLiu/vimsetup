echo "NOTE: THIS SCRIPT IS ONLY FOR DEBIAN BASED LINUX OS or WSL, if you wish to have others, i suggest you ask ChatGPT"

read -p "Continue? [y/n] " answer
if [[ $answer == [Yy]]]; then
  echo "Starting to install the followings"
  # continue with the script
else
  echo "Process has been stopped"
  exit
  # Stops Process
fi

