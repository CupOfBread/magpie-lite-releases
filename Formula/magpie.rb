class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1429/magpie-cli-darwin-arm64"
      sha256 "bfe76337ea06eab4b51f0bb50680629918cfafa9a37488aa97250bcbf060c0ae"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1429/magpie-cli-darwin-amd64"
      sha256 "69a71565adec443fd9f340b19c91ef69daab6ce365d3d2c7914703400b449aea"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1429/magpie-cli-linux-arm64"
      sha256 "a4a7aa15184b2f3a4fdfde1c6a66118b09b2de7c66bd8b9857a5a0821f1fcd88"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1429/magpie-cli-linux-amd64"
      sha256 "78cf52a6b165623f41fdad534ae6cbeaf2991775f066cfe2114793862a43a0a3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
