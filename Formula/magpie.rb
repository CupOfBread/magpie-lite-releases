class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1410/magpie-cli-darwin-arm64"
      sha256 "f2738d86dbfcad67b3193d6d5be224aa24ec332be29798e0fff21b551dd348d9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1410/magpie-cli-darwin-amd64"
      sha256 "a44d386455ff03110316455fe96985b9597bb4b9f8ce8925e83429e6fa294e1f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1410/magpie-cli-linux-arm64"
      sha256 "bc19f7eca1ba72804555dc509dcd4458fb4ac9345227f3996832a2ed75f4659e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1410/magpie-cli-linux-amd64"
      sha256 "1da5fc14bfbf9883c25538d12fafedd974e14a9a197e8c5150bdaf6111f6ce25"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
