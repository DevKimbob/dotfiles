#!/bin/bash

files=(
	"/home/$USER/.tmux.conf tmux"
	"/home/$USER/.config/i3 i3"
	"/home/$USER/.config/i3status i3"
	"/home/$USER/.zshrc zsh"
)

# Loop through each pair in the list
for file_pair in "${files[@]}"; do
  # Split each pair into source and destination
  src=$(echo "$file_pair" | awk '{print $1}')
  dst=$(echo "$file_pair" | awk '{print $2}')
  
  if [ -f "$src" ]; then
    read -p "Copy file \"$src\" to \"$dst\"? (y/n): " confirm
    if [[ $confirm == [yY] ]]; then
      if [ ! -d "$dst" ]; then
        mkdir -p "$dst"
      fi
      echo "Copying \"$src\" to \"$dst\"..."
      cp "$src" "$dst"/.
      echo "Copy completed."
    else
      echo "Skipping \"$src\"."
    fi
  elif [ -d "$src" ]; then
    read -p "Copy directory \"$src\" to \"$dst\"? (y/n): " confirm
    if [[ $confirm == [yY] ]]; then
      echo "Copying \"$src\" to \"$dst\"..."
      cp "$src" "$dst" -r
      echo "Copy completed."
    else
      echo "Skipping \"$src\"."
    fi
  else
    echo "$src does not exist."
  fi
done
