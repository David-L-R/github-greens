# Create Github's "Greens"

One thing that hiring managers often do, is to go into a Github profile of a candidate to get a notion of how much they program. A person that programs almost every day seems more organized, passionate and serious about their career.
So how we can make it look like this even if we did not commit every day?

Follow my tutorial and let me know if it works:

1. Fork this repository
2. Clone it
3. Change the start and end dates (`start_date` and `end_date` variables)
   1. I made it possible toto exclude weeknds.
   2. The idea behind it is to allow you to exclude weekends to make it look more realistic.
   3. You can also choose not to exclude anything.
4. Once the bash file is ready with the correct dates and days, run the file with the command `chmod +x commit.sh && ./commit.sh` (as long as you are inside the terminal of the project)
5. Then go to Github and refresh the repository, and going back to your main page, you should see the updated greens :)

## Possible Errors

### fatal: empty ident name/email not allowed

If you don't have your git name and git email defined, you can do it either globally or locally (for this repository):

```bash
# GLOBALY
git config --global user.name "Your Name"
git config --global user.email "your_email@example.com"
```

```bash
# LOCALLY
git config user.name "Your Name"
git config user.email "your_email@example.com"
```

Make sure that your git
