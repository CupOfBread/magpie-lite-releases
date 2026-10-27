class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1713/magpie-cli-darwin-arm64"
      sha256 "9eab83b1ad59582a2edd1f23531c74ad8cdf7e6ec73c5f5ff6846854e6cd9eb9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1713/magpie-cli-darwin-amd64"
      sha256 "5e4b54ca39d83c15f8267f680e06c68da7cb6beb8792787d3f631fb85ae906bc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1713/magpie-cli-linux-arm64"
      sha256 "ef7dba782deffed446619dfcd70c2d960600f8f046ff8ac60b95dbd2b9b4e64f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1713/magpie-cli-linux-amd64"
      sha256 "06840146ca7614973d45a89bb3fe247a0ad6048764870c1c49e404d8af7dfe8b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
