class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1360/magpie-cli-darwin-arm64"
      sha256 "a5a4904b2ed5a0bb93aa89ab6c802e308f88ed25328069a6f2141a90bc7a608f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1360/magpie-cli-darwin-amd64"
      sha256 "7737853ee59077cd46147b1acb8e26f58d0b6b93bd3591b5c6433ec6dc09590d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1360/magpie-cli-linux-arm64"
      sha256 "02381cb3a35d01717ebafe0044f3932456b37287b56c78b915cc1f3e0faa584f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1360/magpie-cli-linux-amd64"
      sha256 "e79710e22cb6e7dc44d004671bfc457427254ec3521fe924f6cdf9a0e4b3f327"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
