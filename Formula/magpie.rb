class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1406/magpie-cli-darwin-arm64"
      sha256 "772af105d59c854689e4bd20d0b48057b2b0b518bb1be91e64c1dc34f6b8b61a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1406/magpie-cli-darwin-amd64"
      sha256 "33984288e496ba9cd8cfa0722fde6cc4091b8e9c9dfda9e6cf9319f1775bc020"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1406/magpie-cli-linux-arm64"
      sha256 "e11061a7a8c2c92ea8755ab5815a19d38634ee9f9d51de1d9919b5f901cb21de"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1406/magpie-cli-linux-amd64"
      sha256 "8ac47d1bb80a575b786de0d4cf484e18e9b1e35ccb934aa6efc53320fa6c209a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
