class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1528/magpie-cli-darwin-arm64"
      sha256 "708a45cd29e67e9d079788668f9653f8fa9c102a6f9b49e34e7a27209dbcce45"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1528/magpie-cli-darwin-amd64"
      sha256 "180814475d825f8802750f9de174e56d0db3e6d0709367b54891823f524aa3e9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1528/magpie-cli-linux-arm64"
      sha256 "9015c95eca1ef130ea8bb79fa403ead1f60c1b58aad151704841ccb36ac49227"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1528/magpie-cli-linux-amd64"
      sha256 "07117f080e1c8b0973b13868d992d7930d415fec79a71647132204783adfd25f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
