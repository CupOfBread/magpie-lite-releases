class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1562/magpie-cli-darwin-arm64"
      sha256 "ed0506c3cd3d42c05ea0d440c4d620826e0ab5f576c06526772ce2acb8fdceaa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1562/magpie-cli-darwin-amd64"
      sha256 "e6e561f79179a6322077869ba679211c32492804e2e5a2515d8f92807d891ee0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1562/magpie-cli-linux-arm64"
      sha256 "4411b541e5230c264126bb20d1f13691ab8a44cc0bae442407decdb6855b5275"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1562/magpie-cli-linux-amd64"
      sha256 "9ef3ed60812921e8848e421372745f9bec50c47b5259bb2f6a4e4be8e88e588e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
