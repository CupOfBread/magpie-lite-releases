class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1733/magpie-cli-darwin-arm64"
      sha256 "9d0ebf5c86ea3e566612d3dae030b1d725c3433a150050ca34371c0daad12589"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1733/magpie-cli-darwin-amd64"
      sha256 "0b4e4b718f4c7daf0a7b21e0f6f7c1204273d67b171f2c29a7b38c660730bc7d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1733/magpie-cli-linux-arm64"
      sha256 "caa00db99e6340f596fe581cf1b40e896e9431a26fcbbd14897cb0f700c80a81"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1733/magpie-cli-linux-amd64"
      sha256 "94a8bd04bc5a93e87d45f9d58294afa3749f58d24fd6fa16e9a9f17a74c70367"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
