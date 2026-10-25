class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1493/magpie-cli-darwin-arm64"
      sha256 "ee2f7cb6a5bcae7f2f43d225e08a7f6c35017635e5c0c76863ce9ab3ab420069"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1493/magpie-cli-darwin-amd64"
      sha256 "e3248896529272b6ca4085be27f6e6285fbc6b1ee7671be5650532ec4d944044"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1493/magpie-cli-linux-arm64"
      sha256 "96bcfa44aedd9a1c739485a71c4903e36c089e4f9ef2dc3f5b778b7c78a371da"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1493/magpie-cli-linux-amd64"
      sha256 "403e109465a47690ab5580866eb8f56d9b3848f314c9c17123b54d05903c2385"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
