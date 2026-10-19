class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1291/magpie-cli-darwin-arm64"
      sha256 "02ebf36dccca81e4162ff8e08af6db56c91b5024fc042675ae7a37f232c08970"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1291/magpie-cli-darwin-amd64"
      sha256 "7d4ad7f2f8da125ca713554ec0f8b30be4c26f6730eac91622da40ba029ed153"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1291/magpie-cli-linux-arm64"
      sha256 "33e9ca624127fc5643afb2c78dfc88e7ee11eadc9a5763b6077c9397bf2ca67d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1291/magpie-cli-linux-amd64"
      sha256 "ebd0cc14e3ed5c52bc59b50be51ac364988579f217cce1dacf0ee975d4eca5c9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
