class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1296/magpie-cli-darwin-arm64"
      sha256 "5523360ca3524e5cf245dec0e391155d5691ba555d29524e35716bc6e5bde94d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1296/magpie-cli-darwin-amd64"
      sha256 "7cddf3b97b2c954221a7c9834a93f60e57303502afb1b8a1122a8ec8b75b7e17"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1296/magpie-cli-linux-arm64"
      sha256 "a260f8239faf69bc3ba0cc952c4554d90aa598d2b02698163057ee269c07525c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1296/magpie-cli-linux-amd64"
      sha256 "af1eda33004da629fbac1a24c5b3814756fec1627bf4b1a857342b6d8123f3de"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
