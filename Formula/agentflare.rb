class Agentflare < Formula
  desc "Run AI coding agents efficiently, and coordinate more than one of them."
  homepage "https://github.com/getappz/agentflare"
  version "1.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/getappz/agentflare/releases/download/v1.6.0/agentflare-aarch64-apple-darwin.tar.gz"
      sha256 "d87326a161db0a5299ff068a5bdd5f28502e4b9e0712ec586aebc416f187e069"
    else
      url "https://github.com/getappz/agentflare/releases/download/v1.6.0/agentflare-x86_64-apple-darwin.tar.gz"
      sha256 "5deba029843abf464d6a5931b23d69bafd35db681e9cdeb8abd56354d9df4c99"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/getappz/agentflare/releases/download/v1.6.0/agentflare-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "62eb89a5cdbdfdc5731b51f637c468a23402a8fa21a62ba180dab49cba242145"
    else
      url "https://github.com/getappz/agentflare/releases/download/v1.6.0/agentflare-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b24a50b984ce04c89f1d3b94223b66166266e5ebfb1e18bd6002f274d3969638"
    end
  end

  def install
    bin.install "agentflare"
  end

  test do
    assert_match "agentflare 1.6.0", shell_output("#{bin}/agentflare --version")
  end
end
