class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1660/magpie-cli-darwin-arm64"
      sha256 "7f2508d5afa5b44e47420b790cdc791d832010bf1b659308d0c9e88b85295532"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1660/magpie-cli-darwin-amd64"
      sha256 "5bed5af1fa65652e91031cdd5ba82247a5b0be673f68496b3ff06de7248dbf54"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1660/magpie-cli-linux-arm64"
      sha256 "61f501aacf1f7551c803d0d3c227d85dfa0ee304a01042e949c2ea60d7e1ae1f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1660/magpie-cli-linux-amd64"
      sha256 "87ee9e2b2ea370a74ea31b17bfbf594de96de3f2e1e3c9f72e9f88e791155158"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
