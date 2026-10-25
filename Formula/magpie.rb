class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1523/magpie-cli-darwin-arm64"
      sha256 "ee4ffbdfd67d67da3dc34ce4efd903b50e080bfc907950bc6a912176dce8e7c2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1523/magpie-cli-darwin-amd64"
      sha256 "2358db727cc9d541572006c4fe514b5dc520c4baf8f61939f5066e906458ed25"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1523/magpie-cli-linux-arm64"
      sha256 "0e316a86503f853e67e51053299bb6d28ef56c90c3a87fe71f133bb79ea9d2cf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1523/magpie-cli-linux-amd64"
      sha256 "e65c97b89d60c68ae57e8a6b53e1595d55db6fa4b001cead7c9b846750cd6279"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
