class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1317/magpie-cli-darwin-arm64"
      sha256 "74ab104ce603db373066b062bb434ae7f0443e29195602619d9c70248cf53873"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1317/magpie-cli-darwin-amd64"
      sha256 "90e01cfb8ee9978f01dbfd7bab43afeb21b0033e508388786c7ea7f47ac24c54"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1317/magpie-cli-linux-arm64"
      sha256 "620c5a243b91ec64fad5d452522a6c3143dfe68b21f03960531b0cd378926d5c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1317/magpie-cli-linux-amd64"
      sha256 "5e05293cbc253d04cb8f702da5805a6ccabb8fc02d6e639556821c4432582909"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
