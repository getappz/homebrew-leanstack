class Agentflare < Formula
  desc "Run AI coding agents efficiently, and coordinate more than one of them."
  homepage "https://github.com/getappz/agentflare"
  version "1.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/getappz/agentflare/releases/download/v1.5.0/agentflare-aarch64-apple-darwin.tar.gz"
      sha256 "425e4a2e18cc5eb49278d146167aaa080b5cb4e0bb2bcbbcef096a00662fa006"
    else
      url "https://github.com/getappz/agentflare/releases/download/v1.5.0/agentflare-x86_64-apple-darwin.tar.gz"
      sha256 "e3b80308db5e596ff5a38ee68fc3a0b06d45d4b66ce521a05ababda5d8a02365"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/getappz/agentflare/releases/download/v1.5.0/agentflare-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d48608eaae7b4828981f57174fc5ec86cbf6300accd87d1be39e4bcfb277f9cc"
    else
      url "https://github.com/getappz/agentflare/releases/download/v1.5.0/agentflare-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f8f4a24a71366ce6ba24ee3f07bfa0d69929b2756dfe099cf6dbf12be37233a3"
    end
  end

  def install
    bin.install "agentflare"
  end

  test do
    assert_match "agentflare 1.5.0", shell_output("#{bin}/agentflare --version")
  end
end
