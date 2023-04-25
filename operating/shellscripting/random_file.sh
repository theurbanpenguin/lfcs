#!/bin/bash
##Crates a file randomly in your home directory
##You can then use find to locate file
##find $HOME -type f -mmin -10

# Create an array to hold all writable directories
writable_dirs=()

# Create some extra dirs in home
mkdir -p $(date +%F)/sales/{01..23}/{current,last}

# Loop through all directories on the system and test for write permissions
while IFS= read -r -d '' dir; do
    if [ -w "$dir" ] && [[ "$dir" == /home/* ]]; then
    writable_dirs+=("$dir")
    fi
done < <(find $HOME -type d -print0)

# Select a random directory from the array of writable directories
num_dirs=${#writable_dirs[@]}
random_index=$((RANDOM%num_dirs))
random_dir=${writable_dirs[$random_index]}

echo "Hello" > "${random_dir}/myfile"