class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1405/magpie-cli-darwin-arm64"
      sha256 "85d3d0d181eb585f29b1015efa5f20df3c65b12b21bbb6d77d04f80cfdabde0d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1405/magpie-cli-darwin-amd64"
      sha256 "cf1d748dd306a4761bf0fab11fa58c1603c26690d5aa004dc43b4a92df0e20d2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1405/magpie-cli-linux-arm64"
      sha256 "fbcca031a44fdd6de51d29ac5cfca8aa4369a757391be48e9259713fe44d540b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1405/magpie-cli-linux-amd64"
      sha256 "3276bbf2fb1081a4cd16caa2eff523ae83a388694ebdcf0974432f39789b6d02"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
