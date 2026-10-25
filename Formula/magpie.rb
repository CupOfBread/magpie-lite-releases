class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1516/magpie-cli-darwin-arm64"
      sha256 "86a747fa2707ea747578408602f308db6090f1302ff2a11f5b329f3e6fbcc5c3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1516/magpie-cli-darwin-amd64"
      sha256 "850d5a64687124f868fd698b440031f1545a9b5afc873453da0ebf28b622ddf1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1516/magpie-cli-linux-arm64"
      sha256 "1be7ff067a71ba45d126ad26ae3505b67f01def03304c183c44a0dd3b44eacc8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1516/magpie-cli-linux-amd64"
      sha256 "5671dba11e6ff45eb74e0310f98ce20cc2c0ffd645f7a994b62339bff3ddb613"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
