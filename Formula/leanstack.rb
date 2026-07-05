class Leanstack < Formula
  desc "lean-ctx + engram powered token-saving stack for AI coding agents"
  homepage "https://github.com/getappz/leanstack"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/getappz/leanstack/releases/download/v1.0.0/leanstack-aarch64-apple-darwin.tar.gz"
      sha256 "946e9ffef005e9f3dd09d16711698c67f99b04dd9f392ad956c274a8339a060e"
    else
      url "https://github.com/getappz/leanstack/releases/download/v1.0.0/leanstack-x86_64-apple-darwin.tar.gz"
      sha256 "9b4ecb11fec08c744f159b63bdc72f6cb2ea0ec8a200fab87d442f457bbee8b9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/getappz/leanstack/releases/download/v1.0.0/leanstack-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3b8bcd4e5b57dee1a157007b5e8949f9783f539e63f14d834bbbee656d96b174"
    else
      url "https://github.com/getappz/leanstack/releases/download/v1.0.0/leanstack-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6ca5a574633f072fb3838d6ea4055b56ef6a2662d6b50888283c31f3df6145ba"
    end
  end

  def install
    bin.install "leanstack"
  end

  test do
    assert_match "leanstack 1.0.0", shell_output("#{bin}/leanstack --version")
  end
end
