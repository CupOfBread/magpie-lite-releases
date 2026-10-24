class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1391/magpie-cli-darwin-arm64"
      sha256 "af5d523e743ab8be2dff64bbe4ccc991651067e8d3d4279f956266f2dd872ae8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1391/magpie-cli-darwin-amd64"
      sha256 "0f3c37834b1a312670c077a00837aa1be15b7c314ffa443a40fe0febc3b56678"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1391/magpie-cli-linux-arm64"
      sha256 "c2de082c5b44cb77c0bfb8022515aac588c622c8c6a8b1f09ddba5d4d6a0d979"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1391/magpie-cli-linux-amd64"
      sha256 "a1f8db81ddfa968249de8062e3dc25914931f58614c2b2c28ca3288c65fc2a4f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
