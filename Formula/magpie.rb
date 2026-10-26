class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1564/magpie-cli-darwin-arm64"
      sha256 "dd3e969e4edeb95e869f2694ae8532e96c0e80b8fd5892213a9dd3895c0f9e9e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1564/magpie-cli-darwin-amd64"
      sha256 "9980a0c4e61ee23c01890ee1787e5558b85b322a39fad657bf329a270c08ffd9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1564/magpie-cli-linux-arm64"
      sha256 "952d71f061acfd5b8be2ea95b4f7495597868206f7fc867ca0c9ee0ebe30b0c8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1564/magpie-cli-linux-amd64"
      sha256 "7def192127bc9f92709599bea8c9a3cd27cab003c10f6226f9b83ac1ecaf7ef4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
