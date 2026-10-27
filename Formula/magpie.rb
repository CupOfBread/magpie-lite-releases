class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1664/magpie-cli-darwin-arm64"
      sha256 "3807137381f409f83a3f6bf326abb592593667d6664458fb4487a03c16db0102"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1664/magpie-cli-darwin-amd64"
      sha256 "3549b6e07977c6ee8b9805ab6aa9a0a6399e8d8117dc14c9bf03478df18ad1bf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1664/magpie-cli-linux-arm64"
      sha256 "a01dc045cc43549ee7bbab4e7af314366330e74fea31d7db6fc9d62deedbcd64"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1664/magpie-cli-linux-amd64"
      sha256 "b55f5e5b486b5142fed00083aadd35c8d513d956efef59cf3807ae48629afd01"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
