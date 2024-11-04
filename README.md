![smart commit logo](assets/logo.svg)

# Smart Commit

Create a commit prefixed with the current branch name.

[Story](https://www.lftechnology.com/blog/git-workflow-smart-commit/) behind Smart Commit. :zap:

## Installation

Run this command on terminal.

```shell
sudo curl https://raw.githubusercontent.com/sbimochan/smart-commit/main/commit -o /usr/local/bin/commit && sudo chmod +x /usr/local/bin/commit
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

  ![Smart Commit Preview](assets/smart-commit-preview.gif)

## Skip Branches

To add a custom branch that you would like to skip, create a `.smart-commit-ignore` file in your top level directory. A `.smart-commit-ignore` file looks like [this](https://github.com/sbimochan/smart-commit/blob/main/.smart-commit-ignore).

Additionally, you might want to add `.smart-commit-ignore` to your `.gitignore` file.


## Running Tests:

Install Bats if not already installed

```
sudo apt-get install bats  # For Debian-based systems
# or
brew install bats-core      # For macOS
```

Run tests

```
bats tests.bats
```

## Contributors

1. [Aviskar KC](https://github.com/aviskarkc10)
2. [Robus Gauli](https://github.com/RobusGauli)
3. [Saroj Shahi](http://sarojshahi.com.np/)
4. [Saugat Acharya](https://github.com/mesaugat)

## License

[MIT](LICENSE)
