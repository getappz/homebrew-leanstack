class Agentflare < Formula
  desc "Run AI coding agents efficiently, and coordinate more than one of them."
  homepage "https://github.com/getappz/agentflare"
  version "1.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/getappz/agentflare/releases/download/v1.4.0/agentflare-aarch64-apple-darwin.tar.gz"
      sha256 "5097c24138c48bb26f23e72c13a84c363ed595a7b2dd65e405f998d9b497d1e0"
    else
      url "https://github.com/getappz/agentflare/releases/download/v1.4.0/agentflare-x86_64-apple-darwin.tar.gz"
      sha256 "65fd55d105f28cfb8cd0aa001778396140a58d122eab8cb49037321ee73a3b28"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/getappz/agentflare/releases/download/v1.4.0/agentflare-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d8d2f5d819b2b8d6e2304d9627c0594c28235a549fff0b53e28e604e0e69d2de"
    else
      url "https://github.com/getappz/agentflare/releases/download/v1.4.0/agentflare-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "265aaf222dcdd1436ed30b548858706f94deb78d72fcdf694f79edd0127c3ff6"
    end
  end

  def install
    bin.install "agentflare"
  end

  test do
    assert_match "agentflare 1.4.0", shell_output("#{bin}/agentflare --version")
  end
end
