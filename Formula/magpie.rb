class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1793/magpie-cli-darwin-arm64"
      sha256 "2d6a5eeb7f4530e5099e5ebf0edd6188169cdb9b43a5d2f97b1799830fc0bac9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1793/magpie-cli-darwin-amd64"
      sha256 "bfe0ff2ccf30792b29c0b9b3c3d1f86245828db7ccaee54f19affb5cb9314a1a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1793/magpie-cli-linux-arm64"
      sha256 "03fd599b7f16d280ec3d66df4b6120c8552d6977a82245f6b4c866d7d35100db"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1793/magpie-cli-linux-amd64"
      sha256 "9f2910e037bc9e0b5f3736363bc9af994e0858a177ce943f39791e244976e78a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
