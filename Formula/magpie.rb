class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1807/magpie-cli-darwin-arm64"
      sha256 "7ead52d350c2f43167516be48d0d114c922baa7da7b5d5b3ad9232fe43b2f90c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1807/magpie-cli-darwin-amd64"
      sha256 "5b5e25631d2fd89a4ef3fed4aebd215b70623b44dab2bee5083936b286b835e1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1807/magpie-cli-linux-arm64"
      sha256 "202a1dda297c22962bdd8fbfb8afe4693b0c8defdf96f03154ce2e243e8e31b9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1807/magpie-cli-linux-amd64"
      sha256 "31c9af07c5b20fe70e74b5acb062bb8e86e105affc70a176092bfb7cfd00c8fa"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
