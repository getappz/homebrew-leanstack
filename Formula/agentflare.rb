class Agentflare < Formula
  desc "Run AI coding agents efficiently, and coordinate more than one of them."
  homepage "https://github.com/getappz/agentflare"
  version "1.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/getappz/agentflare/releases/download/v1.3.0/agentflare-aarch64-apple-darwin.tar.gz"
      sha256 "ef33fcdd07dead8d5f61b3fe0af0ae4b3aabd3eef1a5899b22e817f207ee2ee0"
    else
      url "https://github.com/getappz/agentflare/releases/download/v1.3.0/agentflare-x86_64-apple-darwin.tar.gz"
      sha256 "512b9d897a286821600fd1256d8d72d2aec970a4320986d61ae7571c7286d81e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/getappz/agentflare/releases/download/v1.3.0/agentflare-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1e6920328f7f079b06e3728bcbc5ae6316ef0c423a65fe450a3abc741fafb9ef"
    else
      url "https://github.com/getappz/agentflare/releases/download/v1.3.0/agentflare-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0ae01916b3ec533f7eab562e81d49b16f11d972fcef128338dda34561db9f790"
    end
  end

  def install
    bin.install "agentflare"
  end

  test do
    assert_match "agentflare 1.3.0", shell_output("#{bin}/agentflare --version")
  end
end
