class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1653/magpie-cli-darwin-arm64"
      sha256 "4efe756f4477164be01fb0bbef4e683cd2270c1ea756a757612cf132cec2acb9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1653/magpie-cli-darwin-amd64"
      sha256 "119d7c7418d0f13c77fe8566e492b67f1397cf6bf6925d0a071911fec440cf71"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1653/magpie-cli-linux-arm64"
      sha256 "532f888da4f0cf6f15eab511fbab264c7a9a4185bec287e34e3a1f52119e2eed"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1653/magpie-cli-linux-amd64"
      sha256 "3ab90d081aa0971a237856dbe3123ed511c77e21e43b7bb7d35de22561747502"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
