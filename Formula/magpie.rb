class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1348/magpie-cli-darwin-arm64"
      sha256 "78cdbb58bdfd7b061f02a007388189ee21fde8f519f71c3cf74eacd231383d83"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1348/magpie-cli-darwin-amd64"
      sha256 "264e7095307190370b27eb2367d07050514d29c48639004f3fa2279f99faf865"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1348/magpie-cli-linux-arm64"
      sha256 "72adc887a25f8d9c241e4b03bda6b607071147f8df714785bf4b07d49b2ca795"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1348/magpie-cli-linux-amd64"
      sha256 "3ba97d4694d967c741ef5986f0f01a182b1cb429854ccda7190bd56f275ef1de"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
