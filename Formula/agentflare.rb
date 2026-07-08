class Agentflare < Formula
  desc "Optimize AI CLI agents for cost and performance"
  homepage "https://github.com/getappz/agentflare"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/getappz/agentflare/releases/download/v1.2.0/agentflare-aarch64-apple-darwin.tar.gz"
      sha256 "f99d43e9662dba0c0fd21e4c390ffd716e8bda59de1306fa87d19a1565df6b05"
    else
      url "https://github.com/getappz/agentflare/releases/download/v1.2.0/agentflare-x86_64-apple-darwin.tar.gz"
      sha256 "4830f14e5f29d629db93d15056995f9b3fe6d5d4816f0a596ff6b62cdb89d80f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/getappz/agentflare/releases/download/v1.2.0/agentflare-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9d37b9ca13fdfd68ae7235dae27eef1c2cc25b2e48c56081ed5b5735558d058b"
    else
      url "https://github.com/getappz/agentflare/releases/download/v1.2.0/agentflare-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "065629044db7de490b996ad48bc255f837a53036f6833c2c28bb9ad8ad513797"
    end
  end

  def install
    bin.install "agentflare"
  end

  test do
    assert_match "agentflare 1.2.0", shell_output("#{bin}/agentflare --version")
  end
end
