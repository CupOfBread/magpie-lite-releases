class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1615/magpie-cli-darwin-arm64"
      sha256 "a86583b599e0c506271bfd1649541863ec79f86fd3bec7e92da599ea2f408e9f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1615/magpie-cli-darwin-amd64"
      sha256 "9ff1c01edf6433a528a730d642f04f7cc5d02982597001b22d1077a54355b5b4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1615/magpie-cli-linux-arm64"
      sha256 "12fa368e52172587ef8da175ea3ba3603a03fb37517ab23f9eb2c8cb6340ad15"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1615/magpie-cli-linux-amd64"
      sha256 "e36b7fcc81d78feb2fa2c92b0228362d8dbe1ef41d4593e917c52449cd7e4975"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
