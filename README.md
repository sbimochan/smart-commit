# Smart Commit

Create a commit prefixed with current branch name.

## Installation

Run this command on terminal.

```shell
curl https://raw.githubusercontent.com/sbimochan/smart-commit/master/commit -o /usr/local/bin/commit && chmod +x /usr/local/bin/commit
```

## Usage

* If your current branch name is `EF-803`

```shell
$ commit "New feature"
```

will translate to

 ```shell
 $ git commit -m "EF-803: New feature"
 ```

* If your current branch is either of `dev`, `uat`, `qa`, `staging` or `master`

```commit "New feature"```

will execute without prefixing the branch name.

 `git commit -m "New feature"`
