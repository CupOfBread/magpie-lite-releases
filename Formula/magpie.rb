class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1559/magpie-cli-darwin-arm64"
      sha256 "a6b52181c4de77272285ae31b0e18794b6b9990d2bd5c526dcdda3a8c397ecc7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1559/magpie-cli-darwin-amd64"
      sha256 "36de15db486a4f5af8da940c8c7cd89094e9f9dace81df02c06748b4d60ba7db"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1559/magpie-cli-linux-arm64"
      sha256 "bdcfc358f930d51589e9ee4d7593b538a7617776a01d2ad25f6d414582bb735d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1559/magpie-cli-linux-amd64"
      sha256 "16aa5669cd6e94ff283f49ac452175606666178cf166afa97f307eff50ecfb6a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
