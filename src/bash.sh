# Create a bash program with pipefail that copies most recent repo from a user on github

# UNTESTED: This is just a template

#!/bin/bash

# # Set the pipefail option
# set -o pipefail

# # Get the username of the user
# read -p "Enter the username of the user: " username

# # Get the list of repositories for that user
# repo_list=$(curl -s "https://api.github.com/users/$username/repos?per_page=100" | grep -o "git@[^\"']*" | sort -u)

# # Get the most recently updated repository
# most_recent_repo=$(echo "$repo_list" | head -n1)

# # Clone that repository
# git clone "$most_recent_repo"

# # Change to the directory of the repository
# cd "${most_recent_repo##*/}"