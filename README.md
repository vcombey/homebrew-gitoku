# homebrew-gitoku

Homebrew tap for Gitoku CLI releases.

## Install

```sh
brew tap vcombey/gitoku
brew install rgh
```

## Update

```sh
brew update
brew upgrade rgh
```

`Formula/rgh.rb` is seeded in this repository and will auto-sync from `https://gitoku.live/rgh/homebrew/rgh.rb` once that hosted formula endpoint is live in production.

The current seeded formula publishes the latest macOS Apple Silicon build. Other Homebrew platforms will keep the upstream `odie` message until matching artifacts are published.
