class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1647/magpie-cli-darwin-arm64"
      sha256 "d99dbba08b1a469c61b94d822819c317a0cff7fca23ee303d363e8e0e989ffe8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1647/magpie-cli-darwin-amd64"
      sha256 "b6db2a7bd94ef9acaf1a6642b8496d9c78bf146e983f11992e57d641a7727bb2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1647/magpie-cli-linux-arm64"
      sha256 "d18002731e131762f19c80c0352658c47ca57e74c0fd89d46a98e89dde4ca5ef"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1647/magpie-cli-linux-amd64"
      sha256 "943102a1fde0c6226831d86b19528b43c967c5bb4b236324b8344d90f91374b1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
