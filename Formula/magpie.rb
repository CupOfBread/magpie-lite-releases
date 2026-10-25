class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1536/magpie-cli-darwin-arm64"
      sha256 "dc3dc99ab36fe4a3f87e3f3da2c624ce4e4fc8956a74340767bf230fbc66990a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1536/magpie-cli-darwin-amd64"
      sha256 "f45f1a17103103f307e28efc6c32e1a73ce2522b5b46866df488c2b6713893f4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1536/magpie-cli-linux-arm64"
      sha256 "d18724b29589c02437ac3fd092570c0b4546ea2bf020cd4d6a1271a5c07831b6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1536/magpie-cli-linux-amd64"
      sha256 "f1b91525c25c82566ba2afa7d0c5c346f84562e1bb40185070283c08f125a63b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
