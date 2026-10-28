class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1816/magpie-cli-darwin-arm64"
      sha256 "42af5a745956ef60e8c163dd34e397962cd64c6833b25cb3db64a1b72cd21cce"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1816/magpie-cli-darwin-amd64"
      sha256 "2dbb6b39ef42e6bc20f64128182b1f27877d184cddb59da30ba6c383b05bcb17"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1816/magpie-cli-linux-arm64"
      sha256 "aba22b8a5c1dd4e2fce578adcbbafafca799fed975727259192c3f67a1d10d84"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1816/magpie-cli-linux-amd64"
      sha256 "609bba3767a62e63b11721bfa2ce7d53e14eed2de2492a7368a49af438b56fd9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
