class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1682/magpie-cli-darwin-arm64"
      sha256 "95e6d55d2326e5a53ccd835b2b50db737dd135f61260a09827783e6026a4f4a6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1682/magpie-cli-darwin-amd64"
      sha256 "0f433de6b35c9bde5646142dc483e2b09543a522750ff681bf9301d86119b2f9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1682/magpie-cli-linux-arm64"
      sha256 "59713e9719705c4c1101b6367a039c72c39039722afb7869a21e654016668e35"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1682/magpie-cli-linux-amd64"
      sha256 "21e75bc52faec8d50174263e7652407015af96b641d1a984ce19d66dde471eaf"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
