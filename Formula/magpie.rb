class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1308/magpie-cli-darwin-arm64"
      sha256 "e364c0ffa0bbb16305e29a288a278a3cc5ec302b8a096ff999d18f22a3c2b219"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1308/magpie-cli-darwin-amd64"
      sha256 "32ace02f9371af10fccfe19f8ccf78c60e00740696d5cc9070dcae12b6f436c7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1308/magpie-cli-linux-arm64"
      sha256 "761b5bb1edcfe29b7996c950d681946097aba582f9b0ee75417fbbb731d285b0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1308/magpie-cli-linux-amd64"
      sha256 "c9c20ddaa942baed4f93759f0df467d14c3505053cae906c6e61520808caafb2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
