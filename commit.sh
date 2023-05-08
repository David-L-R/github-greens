#!/bin/bash

# Retrieve the current Git user name and email address
git_user_name=$(git config user.name)
git_user_email=$(git config user.email)

# Set the start date to January 1, 2022
current_date="2022-01-01"

# Loop through each day of the year
while [ "$current_date" != "2023-01-01" ]; do

  # Get the day of the week (0-6, where 0 is Sunday and 6 is Saturday)
  day_of_week=$(date -jf "%Y-%m-%d" "+%w" "$current_date")

  # Check if the day is not Saturday (6) or Sunday (0)
  if [ "$day_of_week" != "6" ] && [ "$day_of_week" != "7" ]; then
    # Get a random number between 1 and 4
    num_files=$((RANDOM % 4 + 1))

    # Create the specified number of files
    for ((i = 1; i <= num_files; i++)); do
      # Create a new file with the current date and part number as the filename
      filename="${current_date}-part${i}.txt"
      touch "$filename"

      # Add the file to Git
      git add "$filename"

      # Set the commit date with the correct format
      commit_date="${current_date}T00:00:00"

      # Commit the changes to Git with the current date as the commit date and set the Git user name and email
      GIT_AUTHOR_DATE="$commit_date" \
      GIT_COMMITTER_DATE="$commit_date" \
      GIT_AUTHOR_NAME="$git_user_name" \
      GIT_AUTHOR_EMAIL="$git_user_email" \
      GIT_COMMITTER_NAME="$git_user_name" \
      GIT_COMMITTER_EMAIL="$git_user_email" \
      git commit -m "Added file for $current_date part ${i}"
    done
  fi

  # Increment the date by one day
  current_date=$(date -jf "%Y-%m-%d" -v+1d "$current_date" +"%Y-%m-%d")

done
