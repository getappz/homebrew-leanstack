class Agentflare < Formula
  desc "Optimize AI CLI agents for cost and performance"
  homepage "https://github.com/getappz/agentflare"
  version "1.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/getappz/agentflare/releases/download/v1.0.2/agentflare-aarch64-apple-darwin.tar.gz"
      sha256 "fd3c807b7f4ea5172a1cea3fb792efec0bec20f084ebe6d7d8bdeafde32693ca"
    else
      url "https://github.com/getappz/agentflare/releases/download/v1.0.2/agentflare-x86_64-apple-darwin.tar.gz"
      sha256 "ee41174eef3460e63f1a24a47caa8df7cc5ff53d1c5ffa46baf1a04c4b493cfb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/getappz/agentflare/releases/download/v1.0.2/agentflare-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "82e21af558aabdfb1e186242a8b23fff108c7319dcd5a2f555d9d71bfbd36273"
    else
      url "https://github.com/getappz/agentflare/releases/download/v1.0.2/agentflare-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2c74a4a17023fd5effbbf02c8b5cebb8823500cc3c74c327cd095a525fac676f"
    end
  end

  def install
    bin.install "agentflare"
  end

  test do
    assert_match "agentflare 1.0.2", shell_output("#{bin}/agentflare --version")
  end
end
