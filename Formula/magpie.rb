class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1753/magpie-cli-darwin-arm64"
      sha256 "cd9a58000424975273a8058a1bd7a2995d21f8a693d1edb2afbe771608753632"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1753/magpie-cli-darwin-amd64"
      sha256 "11ec8b68ac7d72111a49bc2e590ddbe9246b4a0478c4af494244c68383546f7a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1753/magpie-cli-linux-arm64"
      sha256 "ea42cfff6aa09532f43fc2f2d9d9f7c82f3a8d51553db4bb76ee0d78ce2ea84f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1753/magpie-cli-linux-amd64"
      sha256 "860eca67f48bb353bf54b01390fb52bf56f5d2e44a3ac8ac1de4b9a2c48b0534"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
