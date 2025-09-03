class Greet < Formula
  desc "Greet CLI application"
  homepage "https://github.com/topheman/update-homebrew-tap-playground"
  version "0.1.26"
  license "MIT"

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/topheman/update-homebrew-tap-playground/releases/download/0.1.26/greet-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "0ffabe80977f5ffed9c2c77319aed7bcbcd5b0d00d713f4b613bf2f20ecde2be"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/topheman/update-homebrew-tap-playground/releases/download/0.1.26/greet-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "95f3a286c094e43baafb34e49757b6911b055d43565f66c76a7fd4eb031d9323"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/topheman/update-homebrew-tap-playground/releases/download/0.1.26/greet-aarch64-apple-darwin.tar.gz"
    sha256 "9d717be84e7c7eac97400d3f98047915d6432a779413ffe04fa45924c6faa6f5"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/topheman/update-homebrew-tap-playground/releases/download/0.1.26/greet-x86_64-apple-darwin.tar.gz"
    sha256 "7e588933216e9971c4fac3791ac34bb6c14b37744dd82ffff48fa7d4fd93c8b4"
  end

  def install
    bin.install "greet"
    bash_completion.install "completions/bash/greet"
    fish_completion.install "completions/fish/greet.fish"
    zsh_completion.install "completions/zsh/_greet"
  end

  test do
    system "#{bin}/greet", "--version"
  end
end