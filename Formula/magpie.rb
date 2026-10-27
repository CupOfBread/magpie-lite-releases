class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1761/magpie-cli-darwin-arm64"
      sha256 "2f903c5f64cf2563d84d755e59a3762328ea3df172672b12c2d232ef2ea05401"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1761/magpie-cli-darwin-amd64"
      sha256 "834b0470660fa81c8f2b28583bf375fe2fb6fd93181ab9761db63a809ac03c1c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1761/magpie-cli-linux-arm64"
      sha256 "253061deea6e8bb5eaa39c25f7a037c62401975153f15a1349a867f25bc4c163"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1761/magpie-cli-linux-amd64"
      sha256 "d8f933ad691fa17f66c43594aa8a9c7d9de00563d47807be08452f69aa4f9288"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
