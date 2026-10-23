class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1350/magpie-cli-darwin-arm64"
      sha256 "9967db3aa6418fb60012041f2c26fab27ee7ebda34e1749f1e1ad2b39df6f9fe"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1350/magpie-cli-darwin-amd64"
      sha256 "1c9444eb00de448e1b31eb971e3e1acd8d77ebee12fd7ff2b85f617da0dec841"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1350/magpie-cli-linux-arm64"
      sha256 "9b897dda0ac2f475ca8329c72201f12aca6664dd24a7fb05e84387bfe3f5d251"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1350/magpie-cli-linux-amd64"
      sha256 "331f2b218977b18007e3e81885ffcfa46dd949ca9137d2dfa2daa3fbede84622"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
