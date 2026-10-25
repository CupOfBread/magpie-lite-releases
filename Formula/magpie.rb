class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1526/magpie-cli-darwin-arm64"
      sha256 "089804ea6e44a8a492a83f9c259b49d7ba1cbe0201c5966903956d7606f7c234"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1526/magpie-cli-darwin-amd64"
      sha256 "887f56850452821c75dfdae56fb06a5566d7aacdb864f223f8f03f24d3e77b39"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1526/magpie-cli-linux-arm64"
      sha256 "b747fbc4dbd9eac0cd8df96ce3a9bffdf4953e517a1c68b3709d725c7afe8ef7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1526/magpie-cli-linux-amd64"
      sha256 "3a026104ad7bca83c90cb4c6f40ab449f8c58e1d3bf62f7b3dd8b29f63568dcf"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
