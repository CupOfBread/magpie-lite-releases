class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1804/magpie-cli-darwin-arm64"
      sha256 "efe4c0b63e6270eb30b8cb57a12a2eaba7b38212fb352ae7da00997c3c7399c9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1804/magpie-cli-darwin-amd64"
      sha256 "b8234bf2835bfc6d1b1f007560fb69cada8bb97da3041854d15db37ecfcbce12"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1804/magpie-cli-linux-arm64"
      sha256 "f2b2356475e41ac7a6e8b28b1a02e080ce8cf0e077243499c6dcaceeb60f3c48"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1804/magpie-cli-linux-amd64"
      sha256 "11080d50d3820e4073c1f2412d24d966c3a9404a0150c3fb989564191075ee82"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
