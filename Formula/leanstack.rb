class Leanstack < Formula
  desc "lean-ctx + engram powered token-saving stack for AI coding agents"
  homepage "https://github.com/getappz/leanstack"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/getappz/leanstack/releases/download/v1.0.0/leanstack-aarch64-apple-darwin.tar.gz"
      sha256 "36bd8348ade51979635304d9b5841b30c3270fb3d866a3da29cb0dd1f021bcd3"
    else
      url "https://github.com/getappz/leanstack/releases/download/v1.0.0/leanstack-x86_64-apple-darwin.tar.gz"
      sha256 "2dda1a72e0a283d25490357b7c49fdd46f9c1ceb5926101d03fa5d87e53fb0fa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/getappz/leanstack/releases/download/v1.0.0/leanstack-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "93bc648d91a38c9d11f81a00069fcb923b37ab69dd575b79d37f1f288c7026de"
    else
      url "https://github.com/getappz/leanstack/releases/download/v1.0.0/leanstack-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d9cfd6f1e90f1f2e8019dcbe0c7e9b88389e3acf4f035db70cabbe050b8f36c0"
    end
  end

  def install
    bin.install "leanstack"
  end

  test do
    assert_match "leanstack 1.0.0", shell_output("#{bin}/leanstack --version")
  end
end
