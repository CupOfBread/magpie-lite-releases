class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1735/magpie-cli-darwin-arm64"
      sha256 "d3da3ab80fe72e0d773a2872b22ec355e86c6e6b58493608ac1a9f717ff39206"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1735/magpie-cli-darwin-amd64"
      sha256 "70b23a63fd53aa09478f75f14e07d4475898bb587de7e2cbbea103853cd4ffb1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1735/magpie-cli-linux-arm64"
      sha256 "49780838cf4987a9239534a508d1c86c4c30db9c85b853ffc3a397079b1290b7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1735/magpie-cli-linux-amd64"
      sha256 "3d745597bd16d672ea80ae80a8098e1526483cc040d4fc46fee1689202d80104"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
