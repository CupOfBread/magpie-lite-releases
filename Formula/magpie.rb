class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1666/magpie-cli-darwin-arm64"
      sha256 "47947a356c214098bdec28aa22de4c5b4056dcec4c2bff4a650dbcf3eba918da"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1666/magpie-cli-darwin-amd64"
      sha256 "45a71014427868e070fa93fffa39560ab92525b5695513f5237006292fac8839"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1666/magpie-cli-linux-arm64"
      sha256 "d9b45d596615fa4c0f33915518f43d78e984815d7ca184af0b0a2a35534be6e5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1666/magpie-cli-linux-amd64"
      sha256 "94f892988083982e9897e824f82bb07385ab3f047ba6eeb4cc9a96029c329330"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
