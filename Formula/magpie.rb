class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1369/magpie-cli-darwin-arm64"
      sha256 "d0ea10715de2e313280da92e76d6fc7d63a3984148d036fbfe922641da6c2b2c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1369/magpie-cli-darwin-amd64"
      sha256 "d9c65f94b5ae00a894f79c7f59e66ad00f4d19564b71586b40ebb0c80eee95b2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1369/magpie-cli-linux-arm64"
      sha256 "e7f68236ac7b31f6adec92ecae0cb57efdf412bc5d593dfc20f53ccb1010e028"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1369/magpie-cli-linux-amd64"
      sha256 "ad965887b17505a3849102f24752eed7937538e38a05c38cf9c405dfbb138e32"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
