class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1471/magpie-cli-darwin-arm64"
      sha256 "339df7ee747589055ca619570c2b0f02f216cf113072143f5a33fbd9e5604ff0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1471/magpie-cli-darwin-amd64"
      sha256 "ff8f71bd4dee514dc4f06f656e4a7e12a26a484408c072ef26ebefd91e7d9da5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1471/magpie-cli-linux-arm64"
      sha256 "df55e2d7811a668963038365a271b6c26f15bc7e71a39588a287d9a5e48214d0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1471/magpie-cli-linux-amd64"
      sha256 "576367bcbba942b787ece99adb5a8d21fd6370a83d085217e048e2c5642e0672"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
