# Smart Commit

Create a commit prefixed with the current branch name.

## Installation

Run this command on terminal.

```shell
curl https://raw.githubusercontent.com/sbimochan/smart-commit/master/commit -o /usr/local/bin/commit && chmod +x /usr/local/bin/commit
```

## Usage

* If your current branch name is `EF-803`

```shell
$ commit "New feature"

# translates to
git commit -m "EF-803: New feature"
```

* If your current branch is either of `dev`, `uat`, `qa`, `staging` or `master`

```shell
$ commit "New feature"

# translates to
git commit -m "New feature"
```

You can create a file `.ignore` in your directory to add custom branches you want to ignore. Example `.ignore` file:

```
hot-fix
sprint-11
new-feature
```

## License

[MIT](LICENSE)
