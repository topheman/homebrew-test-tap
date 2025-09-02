class Greet < Formula
  desc "Greet CLI application"
  homepage "https://github.com/topheman/update-homebrew-tap-playground"
  version "0.1.19"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/topheman/update-homebrew-tap-playground/releases/download/0.1.19/greet-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "bc8bd014531f627a0c7c2ebfe216506c2189809cb32d249701ba2ecd2c09d779"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/topheman/update-homebrew-tap-playground/releases/download/0.1.19/greet-aarch64-apple-darwin.tar.gz"
    sha256 "7dbcde5d13017f3e26a333afef8c64058e8952047514696c53adc3dbece163b3"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/topheman/update-homebrew-tap-playground/releases/download/0.1.19/greet-x86_64-apple-darwin.tar.gz"
    sha256 "44c40de6c73e69c340a85493b8992ea2638d2974284925dc63d867719929a4e6"
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