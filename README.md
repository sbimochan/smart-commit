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

### Installation
Goto your desired location

```git clone https://github.com/sbimochan/smart-commit.git```

```cd smart-commit```

```cp commit /usr/local/bin```

```cd /usr/local/bin```

```chmod +x commit```

And restart the terminal
