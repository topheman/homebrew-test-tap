# topheman/homebrew-test-tap

## Test repository for homebrew formulaes

⚠️ **My real homebrew taps are in the [topheman/homebrew-tap](https://github.com/topheman/homebrew-tap) repo.**

I use this repo to test my github actions and workflows for publishing homebrew formulaes.

- [topheman/update-homebrew-tap-playground](https://github.com/topheman/update-homebrew-tap-playground): Testing playground where I run my github actions in development
- [topheman/create-release-if-not-exist](https://github.com/topheman/create-release-if-not-exist): Action to create a release if it doesn't exist yet
- [topheman/update-homebrew-tap](https://github.com/topheman/update-homebrew-tap): Action to update the homebrew tap with the new release

## How to test the installation of the formulaes ?

`brew install topheman/test-tap/<formula>`

Or `brew tap topheman/test-tap` and then `brew install <formula>`.
