class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1607/magpie-cli-darwin-arm64"
      sha256 "54204f33545261c82fd2c68b614d2b44e26b24abf2c0850070052e7a5da889d0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1607/magpie-cli-darwin-amd64"
      sha256 "5a2bffb0a822e9bb27fce6720216d08f27f4676a8eb25c1df3bab2732398ef13"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1607/magpie-cli-linux-arm64"
      sha256 "5fb6b67259ae9a015fc818b175a3ff857d9538cd9e00f2c05acd6197dd036d59"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1607/magpie-cli-linux-amd64"
      sha256 "834e0e9df332e2e69ff23c605baf182e281711a408aee9e04e76a5606be287bd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
