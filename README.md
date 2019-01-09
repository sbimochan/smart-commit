## Smart commit
Create commit with current branch name

For example:
If your current branch name is ```EF-803```

```gcommit "New feature"```

will produce command

 ```git commit -m "EF-803: New feature"``` and execute it

If your current branch is ```dev or uat or qa or master```

```gcommit "New feature"```

will produce default command

 ```git commit -m "New feature"``` and execute it

### Installation
```cd ~```

```git clone https://github.com/sbimochan/smart-commit.git```

```cd smart-commit```

```cp commit /usr/local/bin```

```cd /usr/local/bin```

```chmod +x commit```

And restart the terminal
