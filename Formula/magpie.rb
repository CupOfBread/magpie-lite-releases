class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1298/magpie-cli-darwin-arm64"
      sha256 "8740ae1a56d63fa50ace80d9cc981de254807549a56cb91e710c5df471c290cd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1298/magpie-cli-darwin-amd64"
      sha256 "d0cebc49a5f75c7b98dd71dd826f1ec5ba9f6cbcf6bc53b6fa50a3c6a17aed2e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1298/magpie-cli-linux-arm64"
      sha256 "21609fc7c9eada8ea4a715868754a31f07f8839a7189bc70d50d4c7ba5dfee84"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1298/magpie-cli-linux-amd64"
      sha256 "12c307d3f606ea3307659b4d4730a613dd5bd54fb2086bba37e230689d478ced"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
