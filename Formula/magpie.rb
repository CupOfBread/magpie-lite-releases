class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1637/magpie-cli-darwin-arm64"
      sha256 "af410731d17dc2f6f84844e86d66b76bc972053a75d43bcfd8d78091a9c4cb8b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1637/magpie-cli-darwin-amd64"
      sha256 "9a3c15130a377fe11b0ee49dd337d37709d009ee5201c01520972143c2ca9c2a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1637/magpie-cli-linux-arm64"
      sha256 "27808fb5e3467da834385d774dec3c2f3c7e8c8c7d6352ee84d36e34751aac94"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1637/magpie-cli-linux-amd64"
      sha256 "65639a97048a933deec2b30d5e5202e688617aae258670d34349db663414921c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
