class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1517/magpie-cli-darwin-arm64"
      sha256 "eead1bc61b869e65b9e3444339e635791da6d1d3f32a5d760d4e89ab66b38462"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1517/magpie-cli-darwin-amd64"
      sha256 "d43913bf5841cff2123ca4820683628d65c007640b295c9d3bf0d7bb1db6593c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1517/magpie-cli-linux-arm64"
      sha256 "aa3e45e3b2e62469de673fae6b1a94e7db9b9c7b4121d38f7061e66a965f6f2a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1517/magpie-cli-linux-amd64"
      sha256 "0a1ab2153c5baafca01f924cb96fc5193f43686442876eaa82e3c6f51cafdd89"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
