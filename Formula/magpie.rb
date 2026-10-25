class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1494/magpie-cli-darwin-arm64"
      sha256 "c35e8ae3afbf3b7019774b2873510265b4232745f2340c033c261d5be402f908"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1494/magpie-cli-darwin-amd64"
      sha256 "57b922c6bc13410df749d2c2a24869a8593c5d6acdbd741193c691a615b98c1e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1494/magpie-cli-linux-arm64"
      sha256 "dea77dc25159891ec3c19864af0d319a7ab05b037c93cb57a06055ac765bd043"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1494/magpie-cli-linux-amd64"
      sha256 "08a9cef749710cb95d62fb08f52859aee80a76de4bd08ed91c4096aeb00b9471"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
