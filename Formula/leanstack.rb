class Leanstack < Formula
  desc "lean-ctx + engram powered token-saving stack for AI coding agents"
  homepage "https://github.com/getappz/leanstack"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/getappz/leanstack/releases/download/v1.0.0/leanstack-aarch64-apple-darwin.tar.gz"
      sha256 "122a318623b097dfb80137c88c76d69db2c59db49fc8bb4979f337df1d9b6246"
    else
      url "https://github.com/getappz/leanstack/releases/download/v1.0.0/leanstack-x86_64-apple-darwin.tar.gz"
      sha256 "401895f406da76cf713da20630571427de4c28cc259008288a124d188e7fdc55"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/getappz/leanstack/releases/download/v1.0.0/leanstack-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3062170bd8b1be1da7b4a4fc13ef8475f5533156a90d27828c245a23d87ec129"
    else
      url "https://github.com/getappz/leanstack/releases/download/v1.0.0/leanstack-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "31db43dd7431e2db8a98fb0a3f21deafbe22861772038d7eb84a7902e19dec2e"
    end
  end

  def install
    bin.install "leanstack"
  end

  test do
    assert_match "leanstack 1.0.0", shell_output("#{bin}/leanstack --version")
  end
end
