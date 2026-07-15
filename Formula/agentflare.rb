class Agentflare < Formula
  desc "Run AI coding agents efficiently, and coordinate more than one of them."
  homepage "https://github.com/getappz/agentflare"
  version "1.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/getappz/agentflare/releases/download/v1.3.1/agentflare-aarch64-apple-darwin.tar.gz"
      sha256 "ad6b976be49384ab648638c1fa518adbf20dee2ae41ec28b5a17ff34bbcab2bb"
    else
      url "https://github.com/getappz/agentflare/releases/download/v1.3.1/agentflare-x86_64-apple-darwin.tar.gz"
      sha256 "4be5b80ad2160569518483fbbb5e0f11bd6e9274df4c32840090b19d6a8e60bf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/getappz/agentflare/releases/download/v1.3.1/agentflare-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4b5ed4e8c2a6e24cd112304db93fcd6cf809857744e7c31f236c0662ae71e123"
    else
      url "https://github.com/getappz/agentflare/releases/download/v1.3.1/agentflare-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5d7f0abc0c89c85bfe420d90d281d77ef40f17ce8bfb3888c4b212d59eac9584"
    end
  end

  def install
    bin.install "agentflare"
  end

  test do
    assert_match "agentflare 1.3.1", shell_output("#{bin}/agentflare --version")
  end
end
