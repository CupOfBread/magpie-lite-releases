class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1382/magpie-cli-darwin-arm64"
      sha256 "d454322384e9d13fcc9e88befe4184f557d2b218d5a82e548da2dbe965b771d6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1382/magpie-cli-darwin-amd64"
      sha256 "177ac08decb7b1ede76f3163ffcc5b54cf7e879f7db61fcb56ce9f46b4b7ebae"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1382/magpie-cli-linux-arm64"
      sha256 "9ac527b42267c5d2c5ddbb3f6a9952f7f2e789d75d4a054f6734e032ed9449bd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1382/magpie-cli-linux-amd64"
      sha256 "65a9e37c744735e85d64a44c865ccf93a09c6e375d96cef913003652cc566e89"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
