class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1447/magpie-cli-darwin-arm64"
      sha256 "e31edfe86d68afc3480fc961553a9b7ca0f58ddf8312fb24847e6c64f0d20be4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1447/magpie-cli-darwin-amd64"
      sha256 "43ff1700182598d9560e0a3ab7462e0c40c49b539d2304c8f97d3b3e2a016dbf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1447/magpie-cli-linux-arm64"
      sha256 "3a8196a5fb37aa8d1f134f3e8c57114757dc09a00cfb955b632b6d72dda7cbcb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1447/magpie-cli-linux-amd64"
      sha256 "01594371c87585f1ad06b27e911292b98c7ec2cc5a6d33e42b994379d104d7b7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
