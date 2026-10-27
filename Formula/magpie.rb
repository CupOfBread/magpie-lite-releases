class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1661/magpie-cli-darwin-arm64"
      sha256 "a37fe666d80017392a22f2a8467cc5ec80724dff60e6d16928b3b12f7e854107"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1661/magpie-cli-darwin-amd64"
      sha256 "acb12d7df7daa8560a27b5c2b13db015d8dbbb6bb12f383c8677fa8bb2b01d61"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1661/magpie-cli-linux-arm64"
      sha256 "6dd34c78586c7b61547acb6b879224ed84f07cc3fb4b5f7cf3706f3cdb8fb196"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1661/magpie-cli-linux-amd64"
      sha256 "4003ee6a705e0d679182a553592e93f960b74bcc2259dc3f9dabe924404b0e0f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
