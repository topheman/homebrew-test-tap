class Greet < Formula
  desc "Greet CLI application"
  homepage "https://github.com/topheman/update-homebrew-tap-playground"
  version "0.1.20"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/topheman/update-homebrew-tap-playground/releases/download/0.1.20/greet-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f619d3f15d65175cd032035849ebae28dcd008f0a41b8db9baa232863982590a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/topheman/update-homebrew-tap-playground/releases/download/0.1.20/greet-aarch64-apple-darwin.tar.gz"
    sha256 "1551f7dceed0b99d88e0f0b1d01b3cd180a14ef97731f63e8cdffd1c57a3593a"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/topheman/update-homebrew-tap-playground/releases/download/0.1.20/greet-x86_64-apple-darwin.tar.gz"
    sha256 "7a217713355a53c964215d9da39836ac84190ee1350e4f64577549baa783ffcb"
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