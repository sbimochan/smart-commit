<div align="center">
  <a href="https://github.com/sbimochan/smart-commit">
    <svg width="150px" height="100px" viewBox="0 0 357 200" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
    <!-- Generator: Sketch 52.6 (67491) - http://www.bohemiancoding.com/sketch -->
    <title>smart-commit-logo@1x</title>
    <desc>Created with Sketch.</desc>
    <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
        <g id="Logo-1-Copy" transform="translate(-243.000000, -150.000000)" fill="#00CBE1" fill-rule="nonzero">
            <path d="M406.119673,339.475045 L416.25383,306.99616 L389.363195,307.022472 L430.01516,253.612055 C426.980458,252.960513 423.831204,252.61752 420.601839,252.61752 C395.953449,252.61752 375.971981,272.598989 375.971981,297.247379 C375.971981,316.826584 388.579811,333.461072 406.119673,339.475045 Z M411.188519,340.882703 C414.223221,341.534246 417.372475,341.877238 420.601839,341.877238 C445.25023,341.877238 465.231698,321.89577 465.231698,297.247379 C465.231698,277.668175 452.623868,261.033687 435.084006,255.019714 L424.949849,287.498599 L451.840484,287.472286 L411.188519,340.882703 Z M543.395581,287.438619 L543.395581,307.05614 L484.105193,307.05614 C479.382701,337.883284 452.749648,361.494759 420.601839,361.494759 C388.454031,361.494759 361.820978,337.883284 357.098486,307.05614 L298,307.05614 L298,287.438619 L371.695974,287.438619 L371.695974,307.05614 L357.098486,307.05614 C356.60857,303.858107 356.35446,300.582419 356.35446,297.247379 L356.35446,287.438619 L366.16322,287.438619 L356.35446,297.247379 C356.35446,261.764532 385.118992,233 420.601839,233 C452.749648,233 479.382701,256.611475 484.105193,287.438619 L543.395581,287.438619 Z" id="Shape"></path>
        </g>
    </g>
</svg>
  </a>
  <br/>

</div>
<div align="right" style="font-size:10px">
  Logo by: <a href="http://sarojshahi.com.np/" target="_blank" style="font-size:12px">Saroj Shahi</a>
</div>

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

## Skip Branches

To add a custom branch that you would like to skip, create a `.smart-commit-ignore` file in your top level directory. A `.smart-commit-ignore` file looks like [this](https://github.com/sbimochan/smart-commit/blob/master/.smart-commit-ignore).

Additionally, you might want to add `.smart-commit-ignore` to your `.gitignore` file.

## Contributors

1. [Aviskar KC](https://github.com/aviskarkc10)
2. [Robus Gauli](https://github.com/RobusGauli)
3. [Saroj Shahi](http://sarojshahi.com.np/)
4. [Saugat Acharya](https://github.com/mesaugat)

## License

[MIT](LICENSE)
