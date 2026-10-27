class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1757/magpie-cli-darwin-arm64"
      sha256 "35e674ae7db171751f98fbc9f13b461e3507c8d5d82484475a6e8addaf70125a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1757/magpie-cli-darwin-amd64"
      sha256 "52d1c8533106595015d97cfd587410aca4f7f91875e6b4b62bde3f18155641de"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1757/magpie-cli-linux-arm64"
      sha256 "556d9bb35b1b0446171c9f113ac299fc483ed7a501379e336c309c64ba27570c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1757/magpie-cli-linux-amd64"
      sha256 "3711cf6ebbc3c357b566a1a2bcd708e4258fbefa8aa805cb48e25f90edbe70c1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
