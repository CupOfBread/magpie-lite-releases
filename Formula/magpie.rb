class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1490/magpie-cli-darwin-arm64"
      sha256 "02f1b06ed432e61e8139d895ed495425e7364976377c14b042c876a958b51b1c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1490/magpie-cli-darwin-amd64"
      sha256 "650d52363b2a7db488fbfc8fa41e1a69fcc933a95db064c1f91963f385a135a9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1490/magpie-cli-linux-arm64"
      sha256 "de78e7be4c4901d2a72c60e61262f0a0427e7a075ef1d37441c9b76dbd672243"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1490/magpie-cli-linux-amd64"
      sha256 "504f1e7939cf2986c0d61f33d78a03a9c4b60ea5d7e274e6e105dda525c8863e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
