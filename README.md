# homebrew-tap

Homebrew tap for [Curtain](https://github.com/ChachanNaman/curtain).

```bash
brew tap chachannaman/tap
brew install --cask curtain
```

Curtain is ad-hoc signed (not notarized — that needs a paid Apple developer account), so this
cask's `postflight` clears the quarantine flag for you instead of making you click through
Gatekeeper by hand.

To bump the cask after a new release, update the `version` in `Casks/curtain.rb` to match the
tag pushed to the main repo.
