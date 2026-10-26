class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1583/magpie-cli-darwin-arm64"
      sha256 "b2b366ec8fdf934dd9f292c939a70a664c9934b5cd44441432b3440296815213"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1583/magpie-cli-darwin-amd64"
      sha256 "2f131280288d09cbb471d5ba1c4833d0706488fb1a1d01157fcde344c6234f8d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1583/magpie-cli-linux-arm64"
      sha256 "a0c9aa12e490742cef0f3c348b5c6e86cf55524e60029c921600a5f82ed13fa3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1583/magpie-cli-linux-amd64"
      sha256 "0168f43a5bcab95acfab9b313832d9c0423054a109c0faad9c10430da96325b2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
