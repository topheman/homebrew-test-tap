class Greet < Formula
  desc "Greet CLI application"
  homepage "https://github.com/topheman/update-homebrew-tap-playground"
  version "0.1.18"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/topheman/update-homebrew-tap-playground/releases/download/0.1.18/greet-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "76b7008e861216f3025ac592452bac553b45193b7f2d659b7716643d5a1bbef3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/topheman/update-homebrew-tap-playground/releases/download/0.1.18/greet-aarch64-apple-darwin.tar.gz"
    sha256 "7a676dc8034af517394c872ef420d567e2effee03eb3efa6939f1ac01bed173e"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/topheman/update-homebrew-tap-playground/releases/download/0.1.18/greet-x86_64-apple-darwin.tar.gz"
    sha256 "cd4a04823434fdbcb7935b6c7011b465bb9f8c9567c718250ca5dce12d3a7553"
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