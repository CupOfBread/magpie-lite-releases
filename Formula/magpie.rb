class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1674/magpie-cli-darwin-arm64"
      sha256 "0d997fff7c4669b7037d37c5547abc0185db6931f377893a0f7b0c52904d09d9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1674/magpie-cli-darwin-amd64"
      sha256 "09b6cc4d0463848a04be705685149f722b3528d09205beb5e13d13d8f6a76892"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1674/magpie-cli-linux-arm64"
      sha256 "de5e198bec26b9e5cc8886af9e3cccce0d9759adea8108fe85eb4283cb0b23f6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1674/magpie-cli-linux-amd64"
      sha256 "4a586386a1c2938ba3ec95ccc42f97d69ddd51c28bd7ff0f3079b99e97403d84"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
