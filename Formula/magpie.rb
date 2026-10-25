class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1489/magpie-cli-darwin-arm64"
      sha256 "e5daf2653a3c0c904574eed7717581b137447c4ca49ec3a2e7f090ccb066d6d1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1489/magpie-cli-darwin-amd64"
      sha256 "9de91d28fc462168467f2d1230727c91b712b7746e58dc9c0e9f991d11ce6c78"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1489/magpie-cli-linux-arm64"
      sha256 "f0a2babf576238dd2fef67bc6f364e511022cb25b03ab634c2aa54beb268743c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1489/magpie-cli-linux-amd64"
      sha256 "860be361a1da152d00b07534b2b809d21c47e15baaf59f22e4a427e917eaf6b8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
