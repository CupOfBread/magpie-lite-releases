class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1681/magpie-cli-darwin-arm64"
      sha256 "8625aac4b5f50f65d71482d1b1dce2f433c6eeff6419b7a0229571ff725477a8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1681/magpie-cli-darwin-amd64"
      sha256 "0cc41fd8aae457d211050d02115558c25a38797f9ab6658d9ac6e815cc8d88db"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1681/magpie-cli-linux-arm64"
      sha256 "d9e387914696c04e66bc347708fdc116eb6b01668f0b7963eef21ff17c6f42c0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1681/magpie-cli-linux-amd64"
      sha256 "545ba62159aa8abf0256dfda6d0ac77dd82028eb395f124b415ae4d2cae307bd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
