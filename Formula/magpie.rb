class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1337/magpie-cli-darwin-arm64"
      sha256 "0ad7feb06707ad10233e4cd50b8ab5679caf2bc6c980d517ded983fdd6b7be99"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1337/magpie-cli-darwin-amd64"
      sha256 "65d9de6731631299b203969c613a7ed40432dec19af045f025d1b681a876c854"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1337/magpie-cli-linux-arm64"
      sha256 "eb4c53add5c094ca8e670eb089f43ac7c51cc30cbc59780b7cbdbf7e70a26789"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1337/magpie-cli-linux-amd64"
      sha256 "b528642ee950cc8cb9ebb23a3d044416f3a7d5b15c07b36e4ba2e065d5fb7800"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
