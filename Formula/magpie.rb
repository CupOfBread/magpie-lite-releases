class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1503/magpie-cli-darwin-arm64"
      sha256 "02d34e8f046edf503e3fd47af6667b84318cb93dd25d1a2450e915e7d41a14be"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1503/magpie-cli-darwin-amd64"
      sha256 "5faafc50128ef2d2032767fb6fc716fe6bc4f5cd180d3581ec06cc66a63c5faa"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1503/magpie-cli-linux-arm64"
      sha256 "baf9c6ea4acd812f6a523347de6e073208557213b3176ad7f4f5c77de80154a3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1503/magpie-cli-linux-amd64"
      sha256 "aa81bcf02c68848f3f9276409996dce222c0d040f9afa08d4c6bdd8ad7a9bcfb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
