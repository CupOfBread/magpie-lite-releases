class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1501/magpie-cli-darwin-arm64"
      sha256 "6556c45b20bc9f5c6681444ed2561d38f40e452d9a6fd1d07f50a8d83691e7ee"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1501/magpie-cli-darwin-amd64"
      sha256 "7c621884d3dc8dc3ec4b818ae21a08d49c5fc3463977d1ddd6dcbd5d954f4cac"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1501/magpie-cli-linux-arm64"
      sha256 "ab36105db1ef37fae09fe9e9603ae611da4238b0c62326c7b35dd8d3a8f55d8a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1501/magpie-cli-linux-amd64"
      sha256 "9427bb9739c5ae46a9b3482a26ad89a92241d541ce1456e08f9d1569af5ffe74"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
