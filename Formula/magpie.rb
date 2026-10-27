class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1671/magpie-cli-darwin-arm64"
      sha256 "634db3bca54358681f9d1762e1d24aa7fa614f28add4c916a4cd0932382c4710"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1671/magpie-cli-darwin-amd64"
      sha256 "4f19f73c8d0569791877fcabc078ba2f11133b3fb5da9bdf38c8430e03aa77e8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1671/magpie-cli-linux-arm64"
      sha256 "6aa184ec9b0587915698e45c508d96e215f14da094162e2bde2ddf7b5d7ba0d2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1671/magpie-cli-linux-amd64"
      sha256 "36a4fb651a76d80941510fd7b8ecb76a787c3d32471594f08598ba220420ee43"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
