class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1644/magpie-cli-darwin-arm64"
      sha256 "e709a0eb6aad0f9fbcf989fcb0e06ed7d1af39ed135818a93c3277299e4a072f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1644/magpie-cli-darwin-amd64"
      sha256 "a46f666d93d7217fd7905d9f132f52f4cbdb73005fb33ebb5dbb6130bce565f6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1644/magpie-cli-linux-arm64"
      sha256 "d63340a46f7dcbe0ff6fa4be9bf9784728d11def80817e77d2d81f2a05dbf5c1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1644/magpie-cli-linux-amd64"
      sha256 "5480b1ba7e30ff8a9ea2ad2aad38e3820c11e0d06c54d944e014cfc57c55fff3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
