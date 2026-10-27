class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1665/magpie-cli-darwin-arm64"
      sha256 "a4e233344d40964f966590d324d31a1b8cde65de7aa41084b87c102786312ccf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1665/magpie-cli-darwin-amd64"
      sha256 "e3dea9b893bcc30f733f97011db748517ca5c0077bf9b926c186b01edb565796"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1665/magpie-cli-linux-arm64"
      sha256 "57def32a4667f73fe57adb127708e41c00d17a1f60e4963e9dae2ba2b6aee641"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1665/magpie-cli-linux-amd64"
      sha256 "b6118fc3563671c8217e28ddde9df163ca5c587f181df209c829210f6da9426c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
