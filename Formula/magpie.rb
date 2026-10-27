class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1723/magpie-cli-darwin-arm64"
      sha256 "0e4a0c058f7db075aa0c6f70ff0dc10cb651acfdf215273ede260e819f9106f8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1723/magpie-cli-darwin-amd64"
      sha256 "d712fc3338f094931e9fc7826242da21e9000c1bea3e3a87c5fa05634d001296"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1723/magpie-cli-linux-arm64"
      sha256 "cff7767bab98faa5d9944bab17f84abbbe7193bbae95b60dcd05a5d7e18cf41b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1723/magpie-cli-linux-amd64"
      sha256 "e5527492eb6a866bfcb9c5d123ef910d02e5f0ca336dc8df1bb9b4f73b9686de"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
