class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1522/magpie-cli-darwin-arm64"
      sha256 "489cdaedf8085e9d20cfb34a64a7b0b60e91792666788739f8e3037c5d2424d4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1522/magpie-cli-darwin-amd64"
      sha256 "ce5f28f7152c3fe5a655d1b4e7b5b0c17605db5ced1a76179f50d1dd098c25c5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1522/magpie-cli-linux-arm64"
      sha256 "9f1b59b6bf05090f8ae0b7239a66dd937cbe7782454326aa58a911d54dcd2203"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1522/magpie-cli-linux-amd64"
      sha256 "cb30820b4f9f97d0b6f2c65eda6d7c9e1d731437ff096d223cc5303884ddae85"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
