class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1638/magpie-cli-darwin-arm64"
      sha256 "3fe22bfccccbb2c4f23394f24723948ede689cc2fa6bfeae444a968b08186864"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1638/magpie-cli-darwin-amd64"
      sha256 "bc7b396caf67701904a49b7a202a4050764c5159c891f7421e8c9fbd99fb7394"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1638/magpie-cli-linux-arm64"
      sha256 "ce95fe8dcfce81d34502f9acaa7838f3c0ba26ba382fcd0d8cf89b74dd0954a4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1638/magpie-cli-linux-amd64"
      sha256 "aa54cbfc4b38c69f59bd1fe4e4a902adb960460e05e16084da24b1b817499822"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
