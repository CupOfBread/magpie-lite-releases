class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1384/magpie-cli-darwin-arm64"
      sha256 "da97fd339574ec20dc6b1cade48c5ee055be69dd4f14c346a17f5f33b2bbb465"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1384/magpie-cli-darwin-amd64"
      sha256 "16f45f5db4bf1a8893ff1dfd6acbdc619a2ea4d4c3397c8b298a10b7f98d7de9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1384/magpie-cli-linux-arm64"
      sha256 "89ea11d3f226dbfda546c246fda17d496e8f0d058169a6fa904f61b790bb0436"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1384/magpie-cli-linux-amd64"
      sha256 "666c7879b451f7e39ef1d1e5723823e74b161233635ed50e77589b1ad2b6814c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
