class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1655/magpie-cli-darwin-arm64"
      sha256 "f2088ed8370d5f4a343d7d1adee775a5753de03b2d5bb9cdde8c95bb7f8a60f7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1655/magpie-cli-darwin-amd64"
      sha256 "2bd5971d1fcc6e4b9ebb80e0d964a6ab3842a3ffb8a372c5c64957d4ca09a2a0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1655/magpie-cli-linux-arm64"
      sha256 "cf62436b334f804e82471ae342769b7881fea3bffb6ee8777373c89fbaf7c5ba"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1655/magpie-cli-linux-amd64"
      sha256 "55bdd70f39f9e162740b26ad2c90db48ab719fd1152bfd6702625ab40e5ab183"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
