class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1821/magpie-cli-darwin-arm64"
      sha256 "a1cb6c1b6c496a91805fe6a53b9b17454f8d66d178d20608aff294e15706e57f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1821/magpie-cli-darwin-amd64"
      sha256 "9ecc38c32b486abfde4094e23c8e0420ac0ecf69ec8bac0e9ecc3d964f81c1e1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1821/magpie-cli-linux-arm64"
      sha256 "8d4dc97e253e937eaef389cf65834b4a82ddd8d0b9394cd0070ee7d87cb1abdd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1821/magpie-cli-linux-amd64"
      sha256 "527512ecef65e93e5404e08929455fed163c09718a3103989f07fa5a6659d27b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
