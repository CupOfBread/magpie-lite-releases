class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1557/magpie-cli-darwin-arm64"
      sha256 "fb923f67a1faa387c684284737d788bc88d634d79539b6c41d9318815a3c9af0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1557/magpie-cli-darwin-amd64"
      sha256 "603ecb6b7a0a92577ff6287b69c066d4cf5ee2f8d87583a96dccae7b6e798191"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1557/magpie-cli-linux-arm64"
      sha256 "de78958925dde4731b5fb3545d77d24afdc06d0407176746e7aa47af99fe4101"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1557/magpie-cli-linux-amd64"
      sha256 "714ab5c6a62607c655ce83bc562800d0725d02b477204dfcb0c6f15de66f2e1b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
