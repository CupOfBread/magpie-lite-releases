class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1626/magpie-cli-darwin-arm64"
      sha256 "29f150715d1252b8aa0bbcd9204003bfbc2adbb3785f5cf3b2f928dbf044577e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1626/magpie-cli-darwin-amd64"
      sha256 "ae9292a91d37e3e28b27e774771b83706ad03e3d1124281a173578a85f8e0121"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1626/magpie-cli-linux-arm64"
      sha256 "ac5560dd78235714c9dae1f4d208a698e1179e206218505555ed846315ba649d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1626/magpie-cli-linux-amd64"
      sha256 "a51f0370f195385a73376e9d2dd3b787f5ca6120487cad84fd0753e1caa5530e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
