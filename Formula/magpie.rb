class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1639/magpie-cli-darwin-arm64"
      sha256 "2a2bf5feb6d09417290fb059d716e091e9a44f3fc774b9d9e59216a0cd3366ae"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1639/magpie-cli-darwin-amd64"
      sha256 "662ea991de3f35185ad0013e6d06ec1582c1ea0129771b9b52c338425630ee7d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1639/magpie-cli-linux-arm64"
      sha256 "6e496667133e3895f7c0b3105b681c782e2e90a65feeb363f0745cdc02b04623"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1639/magpie-cli-linux-amd64"
      sha256 "d2cd29d863179e83586cececb056cc527e52b1a4bb0ce371c3c8a0006524992c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
