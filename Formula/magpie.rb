class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1764/magpie-cli-darwin-arm64"
      sha256 "c92fbaa171f36ae994b600eadb9485ee53c46c84795dbe10cc723307d22909b8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1764/magpie-cli-darwin-amd64"
      sha256 "4ce114517abc8b6a6e3577fdf98354e363a25483be62a50f1a1f2a89258f97ea"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1764/magpie-cli-linux-arm64"
      sha256 "f2c1fc4ac7b0ea90d4c6899a92ce555ac1d24ae57723d27450cc57646072c78b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1764/magpie-cli-linux-amd64"
      sha256 "664ca9f00b971c35cb62a12c0ac3cea0593cf71c419944b84e8581df04e03128"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
