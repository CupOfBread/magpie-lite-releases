class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1437/magpie-cli-darwin-arm64"
      sha256 "fc02a3f41b49bad35d16e6a3b61fec0196e928497d7c17b160dfcb1c8cf92743"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1437/magpie-cli-darwin-amd64"
      sha256 "1eeeb7c54aadce737e58317a3715a64bbcfc8ee7913a71e5a88f2f56183ff46a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1437/magpie-cli-linux-arm64"
      sha256 "bc282af6ee7df179983ade8b1535189a20aa4ff5bbd4b2f705b10d6417859158"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1437/magpie-cli-linux-amd64"
      sha256 "f72078728e56a6dd6e9020ad3cc9d5272243ff44e7dd2541435227d15274f0cc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
