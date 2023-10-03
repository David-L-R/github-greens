<img width="773" alt="greens" src="https://github.com/David-L-R/git/assets/31222514/08991eea-9052-467c-a85d-79a585b330b0">

# Create GitHub's "Greens"

Hiring managers often visit a candidate's GitHub profile to gauge their programming habits. Candidates who program regularly appear more organized, passionate, and dedicated to their career. How can you achieve this appearance even if you don't commit daily?

Follow this tutorial and share your feedback:

1. Clone it
2. Create a new repository
3. Remove .git, run `git init`, and push it to your new repository
4. Modify variables
   - Start and end dates (`start_date` and `end_date`)
   - Exclude weekends (optional) for a more realistic look
   - Alternatively, choose not to exclude any days
5. With the correct dates and days in the bash file, run the matching command for your OS in the terminal at the project root:
   - MacOS - chmod +x commit-macos.sh && ./commit-macos.sh
   - Windows - chmod +x commit-windows.sh && ./commit-windows.sh
   - Linux - chmod +x commit-linux.sh && ./commit-linux.sh
6. Refresh the GitHub repository and return to your main page to view the updated "greens" :)

## Possible Errors

- `fatal: empty ident name/email not allowed`
  - If your git name and email aren't defined, configure them either globally or locally (for this repository):

```bash
# GLOBALLY
git config --global user.name "Your Name"
git config --global user.email "your_email@example.com"
```

```bash
# LOCALLY
git config user.name "Your Name"
git config user.email "your_email@example.com"
```
