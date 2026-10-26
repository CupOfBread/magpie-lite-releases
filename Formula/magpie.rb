class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1642/magpie-cli-darwin-arm64"
      sha256 "d13836f09eb21eacabe42f61dcd8bc8b5768ac2e3f4db2be8b01e65045cb6f30"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1642/magpie-cli-darwin-amd64"
      sha256 "bbb4f0c6aa0a80913c4d98ec8f344786efe6cdf33667cde047b09aba19ba6051"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1642/magpie-cli-linux-arm64"
      sha256 "6cfc7da4bd08e863dbcd94432a417f383995e7db72dcefdacf878a0b50dbd7da"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1642/magpie-cli-linux-amd64"
      sha256 "3758e00b7669b1e0d0e793392c04f0f02f93f3ea2c05cf32d5241744cf4c1921"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
