class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1573/magpie-cli-darwin-arm64"
      sha256 "7763542e6ba3c57d97536bb8a18b90756b6235399ccc856a6fdf2b430a566ef7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1573/magpie-cli-darwin-amd64"
      sha256 "7d922f8e37530deb199f8aebf51880de2c0462fac6dcc73b6453d23d210a9da3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1573/magpie-cli-linux-arm64"
      sha256 "7cebf914d25db5138d0922964a397e5c37fa93e13917d70810e5725b81660f03"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1573/magpie-cli-linux-amd64"
      sha256 "c64d89889f121ad78734f181b37eeda5d6c0d3c96f81e0b1dded29e245fb6749"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
