class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1316/magpie-cli-darwin-arm64"
      sha256 "e7cbc3aece80e5b70783d8e1409738fc975feddb1853284de310c4b8f0c680b3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1316/magpie-cli-darwin-amd64"
      sha256 "9d600f59ffb41a1bdb98b284a4d565aaaf1fc31f5850e50c718d9e8304355dae"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1316/magpie-cli-linux-arm64"
      sha256 "c878770314c60cfc15f6a9c352f93cc2d17fdc7d7936caf28db2ff26c4242827"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1316/magpie-cli-linux-amd64"
      sha256 "e5e8dd7e0d241b324105674b68db286325e2dd992260549f5aee710be2e40c4c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
