class Agentflare < Formula
  desc "Optimize AI CLI agents for cost and performance"
  homepage "https://github.com/getappz/agentflare"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/getappz/agentflare/releases/download/v1.1.0/agentflare-aarch64-apple-darwin.tar.gz"
      sha256 "1678f888b3c3dd7ec8099907cfc5635ac035b6c8679d507e878b0eecf5e9b5eb"
    else
      url "https://github.com/getappz/agentflare/releases/download/v1.1.0/agentflare-x86_64-apple-darwin.tar.gz"
      sha256 "3bdadbc16e512947ef028dba32be98c5fcc5f9c0a7466cfbeb45aaf71c85421f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/getappz/agentflare/releases/download/v1.1.0/agentflare-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "33163bf2926cbb9426e577a3be4f71ec8f45c81f8bb4ed98d559f6add6da7034"
    else
      url "https://github.com/getappz/agentflare/releases/download/v1.1.0/agentflare-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a2aea0dbe937fd2dbd63ff61ebff36f3f3dea5aee7b138d7d608d97971ee60a4"
    end
  end

  def install
    bin.install "agentflare"
  end

  test do
    assert_match "agentflare 1.1.0", shell_output("#{bin}/agentflare --version")
  end
end
