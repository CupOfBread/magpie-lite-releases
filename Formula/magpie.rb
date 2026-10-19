class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1293/magpie-cli-darwin-arm64"
      sha256 "5a034580a5e30f57c04d46a0f335e1694193212a1ea73e70a1ec5de987ca47e8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1293/magpie-cli-darwin-amd64"
      sha256 "e797aa324935c9b67e22d2027b3a4e5fabc69e601faacfdd4b0985b6e9573dfc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1293/magpie-cli-linux-arm64"
      sha256 "84efdefeed67dd46b091d460a6f22d7aa4d20e1e37e8f8c7193ee0c01d50b344"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1293/magpie-cli-linux-amd64"
      sha256 "3518262e6ed00b671e1d032a079ceedf3eb72120db368c72281475c26fad0a91"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
