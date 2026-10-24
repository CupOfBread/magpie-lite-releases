class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1411/magpie-cli-darwin-arm64"
      sha256 "439f8d0e47d0370f56a827412fe9c2449de8778bc4651da5b617271c08c028d0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1411/magpie-cli-darwin-amd64"
      sha256 "a455b5eeba609b2c4d1b6ca291be0383940bc27a2f19c410f7fcf9227634e7f7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1411/magpie-cli-linux-arm64"
      sha256 "3962d0ea21f2d37e6b3e9bcaf3ba0a4dda3ac602f1271d0a4b552de4bd32fb60"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1411/magpie-cli-linux-amd64"
      sha256 "d189d926cdd6c2753feabfdf8fad4098ab774dc881a6b130be71b14d7df90fe8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
