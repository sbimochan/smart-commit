## Smart commit
Create commit with current branch name

For example:
If you're current branch name is EF-803

```gcommit "New feature"```

will produce command

 ```git commit -m "EF-803: New feature"``` and execute it

### Installation
``` cd ~```

``` git clone https://github.com/sbimochan/smart-commit.git```

``` alias gcommit="sh ~/bin/smart-commit/commit"```

And restart the terminal
