class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1770/magpie-cli-darwin-arm64"
      sha256 "4d804e050e52b745d2b9810905667af510f393d200f9a1fc75703caaf5d63f98"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1770/magpie-cli-darwin-amd64"
      sha256 "4c5734c50479f1bd59c450fd320983e6fdc32093df1f2fd34cef981e9d2c75d2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1770/magpie-cli-linux-arm64"
      sha256 "6d0a687290100bd5be56c986a4607c06c3ce732dd69c789f1ebc6d2a82c25003"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1770/magpie-cli-linux-amd64"
      sha256 "d2328cb997614287da3fc16dca3a20f13a598db5c7d5e9a2739a06de2335295f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
