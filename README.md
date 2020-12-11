# Release Binary GitHub Action

Automate publishing build artifacts for GitHub releases through GitHub Actions

```yaml
# .github/workflows/release.yaml

on: 
  release:
    types: [published]
name: Build
jobs:
  release-linux-amd64:
    name: release linux/amd64
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - name: compile and release
      uses: yaronius/go-release.action@v1
      env:
        GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
        GOARCH: amd64
        GOOS: linux
        BINARY_NAME: my-cool-app # custom name for your binary, project name by default
  release-darwin-amd64:
    name: release darwin/amd64
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - name: compile and release
      uses: yaronius/go-release.action@v1
      env:
        GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
        GOARCH: amd64
        GOOS: darwin
        BINARY_NAME: my-cool-app # custom name for your binary, project name by default
  release-windows-amd64:
    name: release windows/amd64
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - name: compile and release
      uses: yaronius/go-release.action@v1
      env:
        GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
        GOARCH: amd64
        GOOS: windows
        BINARY_NAME: my-cool-app # custom name for your binary, project name by default
```

## Thanks
* `totoval/go-release.action`