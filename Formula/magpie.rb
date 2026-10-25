class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1477/magpie-cli-darwin-arm64"
      sha256 "5fb296236830ae3d8d6655ddf2e2c0de3e0e24f896a5e6b39fc77052cfda9fbf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1477/magpie-cli-darwin-amd64"
      sha256 "9b0383680a367735dd38a94f495972e9c92fa4d56aaf83a0d60dce7aa70819c4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1477/magpie-cli-linux-arm64"
      sha256 "003a3b25d14c6c418fd6e77cdef3feecae5592fe559a2279c9b1ee284cc7aeae"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1477/magpie-cli-linux-amd64"
      sha256 "7a50b72458fb637a6ec3216c529943addf5737138b853cd19dc6a980a07aea45"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
