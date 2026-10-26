class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1588/magpie-cli-darwin-arm64"
      sha256 "e894f194a1505bb9fd2eba56e1fcb3e09fe38b23d51b86380ba339e098886bdf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1588/magpie-cli-darwin-amd64"
      sha256 "a8abbac69241fabca6efedc1f4e79084f6edf37de59afff26f945d4a387a263c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1588/magpie-cli-linux-arm64"
      sha256 "037ffba28b635fabd6be8332abd4b5ad48efaf12cddd5dca6bc06db1cbc7571d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1588/magpie-cli-linux-amd64"
      sha256 "c885f3a75da114c3a273e7df7dcd1b66c81f413bccd0f881697f51959c3c9ce6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
