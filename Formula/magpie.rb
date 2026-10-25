class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1497/magpie-cli-darwin-arm64"
      sha256 "a1448020f4d761d6e042fe99e0ee50ddcbb160f8136be8d2feb28ffcecb61fae"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1497/magpie-cli-darwin-amd64"
      sha256 "0bf242927bae5bcc95cbc4f6a9240c8b416bd1f5cc938c2a78e09473d4aeb277"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1497/magpie-cli-linux-arm64"
      sha256 "169bd09e19ecb8905a339e46c7ed0daa5cc6937407ac1d9c95404093e13e9032"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1497/magpie-cli-linux-amd64"
      sha256 "0f44af2df84c178cd9dabb478d1c6426c5f08f2493f766143f573340229e4a9b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
