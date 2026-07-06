class Agentflare < Formula
  desc "Optimize AI CLI agents for cost and performance"
  homepage "https://github.com/getappz/agentflare"
  version "1.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/getappz/agentflare/releases/download/v1.0.1/agentflare-aarch64-apple-darwin.tar.gz"
      sha256 "1476ace1b4114925b7a36a35882febed0678f26a93f047e30ed649a4b671c11e"
    else
      url "https://github.com/getappz/agentflare/releases/download/v1.0.1/agentflare-x86_64-apple-darwin.tar.gz"
      sha256 "395f5422938a2386fa9976f8fd53d5f52b5cb44a36a3bc3e5c8612f359982eeb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/getappz/agentflare/releases/download/v1.0.1/agentflare-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "357bab4b52e58620dd8c49dbe4a7e069ea32f9ad43ce332ad6f2231df1658908"
    else
      url "https://github.com/getappz/agentflare/releases/download/v1.0.1/agentflare-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f8c4f274a07ea2e1116a0adeedec9af4de98cc5411887188756dafed23b32ea2"
    end
  end

  def install
    bin.install "agentflare"
  end

  test do
    assert_match "agentflare 1.0.1", shell_output("#{bin}/agentflare --version")
  end
end
