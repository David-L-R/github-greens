#!/bin/bash

# Retrieve the current Git user name and email address
git_user_name=$(git config user.name)
git_user_email=$(git config user.email)

# Set the start date to January 1, 2022
current_date="2023-01-01"

# Create the text file
filename="file.txt"
touch "$filename"

# Loop through each day of the year
while [ "$current_date" != "2023-05-08" ]; do

  # Get the day of the week (1-7, where 1 is Monday and 7 is Sunday)
  day_of_week=$(date -jf "%Y-%m-%d" "$current_date" +"%u")

  # Check if the day is not Saturday (6) or Sunday (7)
  if [ "$day_of_week" != "6" ] && [ "$day_of_week" != "7" ]; then
    # Generate a random number between 1 and 100
    random_num=$((RANDOM % 100 + 1))

    # Set num_changes based on the probability distribution
    if [ "$random_num" -le 30 ]; then
      num_changes=0
    elif [ "$random_num" -le 55 ]; then
      num_changes=1
    elif [ "$random_num" -le 75 ]; then
      num_changes=2
    elif [ "$random_num" -le 90 ]; then
      num_changes=3
    else
      num_changes=4
    fi

    # Make the specified number of changes
    for ((i = 1; i <= num_changes; i++)); do
      # Add a character to the text file
      echo "a" >> "$filename"

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
      git commit -m "Change $i on $current_date"
    done
  fi

  # Increment the date by one day
  current_date=$(date -jf "%Y-%m-%d" -v+1d "$current_date" +"%Y-%m-%d")

done
git push origin main


