class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1367/magpie-cli-darwin-arm64"
      sha256 "4340339de5a47af0fb97ac989f488d4f15ea424dd621ca55946cbb011f405d22"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1367/magpie-cli-darwin-amd64"
      sha256 "d3de7717bf850add2a9283f2f251e7f8d11871c91f140a8c53b4a61371784b79"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1367/magpie-cli-linux-arm64"
      sha256 "105cf6de13031ff69d71d2ce8d8a6af9ea1564d193cb2ff553543d2d5fda9705"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1367/magpie-cli-linux-amd64"
      sha256 "fd24ffad1d26567d4a47fd8c3e6b0b4dca8c492c4145b0fec9ceba3222c9acfa"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
