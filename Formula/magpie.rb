class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1609/magpie-cli-darwin-arm64"
      sha256 "ec350059cd5299863287f19e9680d3caf5777243d5ee0a69bf4b02447eea52a1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1609/magpie-cli-darwin-amd64"
      sha256 "8c2c8130a6569fb09430f67966d7a392d2fce160afc3d19135b34af9bc7b1b82"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1609/magpie-cli-linux-arm64"
      sha256 "dad5c3b42dde7308fbd9ae1ab92498b2f6c8cb9ab9874a66dc6ac78145be1973"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1609/magpie-cli-linux-amd64"
      sha256 "a5636e8f01952d9b1be928c18a637c323f9ebb4a517f3df6123a77a2bb711143"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
