class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1341/magpie-cli-darwin-arm64"
      sha256 "d8146f9da742ac22dfa4b1a160761a8d06050884bf404789c0534ff38c455c8d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1341/magpie-cli-darwin-amd64"
      sha256 "9ee24aee4ff1786a718eb40a5ab8d7dc0d3e818c33534dc33d48f101632cb073"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1341/magpie-cli-linux-arm64"
      sha256 "4a0d89e053513ddb2b6f1184bac3f41c9457778443b5cc7fd32496dfa4951ea2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1341/magpie-cli-linux-amd64"
      sha256 "089b46e8ec2efe7ab8b3f886925770adaeeebdd83d3b6907d94a6df7ff5ef3cb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
