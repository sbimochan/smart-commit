## Smart commit
Create commit with current branch name

For example:
If your current branch name is ```EF-803```

```commit "New feature"```

will produce command

 ```git commit -m "EF-803: New feature"``` and execute it

If your current branch is ```dev or uat or qa or master```

```commit "New feature"```

will produce default command

 ```git commit -m "New feature"``` and execute it

You can create a file `.ignore` in your directory to add custom branches you want to ignore. Example `.ignore` file:

```
hot-fix
sprint-11
new-feature
```

### Installation
Run this command on terminal

```curl https://raw.githubusercontent.com/sbimochan/smart-commit/master/commit -o /usr/local/bin/commit && chmod +x /usr/local/bin/commit```

And restart the terminal
