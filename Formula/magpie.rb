class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1550/magpie-cli-darwin-arm64"
      sha256 "e63cc142be7aefd5ed652ccbd9f880085206dffeb7fb35c6ea53adaad057838e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1550/magpie-cli-darwin-amd64"
      sha256 "0a91a1911c12aaddd32307a0644e6c7e866e06105f1aea8601864f163fd05fc4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1550/magpie-cli-linux-arm64"
      sha256 "65f17fa8d45697be7b03301c14b30f311ef3e78ae3c6d7d61e3bd8897776b019"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1550/magpie-cli-linux-amd64"
      sha256 "f6cccc7ccc970c5ebaa30d3c85d8761413c5a511eb813835f74f01dc64c09dd2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
