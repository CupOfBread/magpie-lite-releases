class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1504/magpie-cli-darwin-arm64"
      sha256 "d13bb724ab3a5534f3adf289fc96e453fe344a99ef3c6aa55184a7add91e50e6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1504/magpie-cli-darwin-amd64"
      sha256 "04b7c937744584251f69c39900cb9dc4e42d8aea69068a9430cc46e515e5afae"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1504/magpie-cli-linux-arm64"
      sha256 "8cffdbdf057bc53e494cc03c5bc48902bc65d74ede123f1879d7802a0d299f04"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1504/magpie-cli-linux-amd64"
      sha256 "ad93402778c7cdfecce58376a7cde82f6a39a6a0a60645e84e6fd982e54dd897"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
