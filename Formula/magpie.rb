class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1532/magpie-cli-darwin-arm64"
      sha256 "7f4def84fb97a0bda1f9430161affebe33e1e6e1c973f1298de04f7faf7f2e0e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1532/magpie-cli-darwin-amd64"
      sha256 "37d1b75bc78a4618e93978f22dedd1cc5c893efa67bbbd2dda2537f4a5e41a60"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1532/magpie-cli-linux-arm64"
      sha256 "a1ad6272d330b11226e6571c315c5d483bb9fa8e4cea8d6e6b20bfed342c952d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1532/magpie-cli-linux-amd64"
      sha256 "39fcc09c9318d15c32d551bd3136b458802a4e14e518ffe07fa593f7bcb71531"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
