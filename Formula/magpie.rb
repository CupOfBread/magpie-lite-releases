class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1370/magpie-cli-darwin-arm64"
      sha256 "2ec2e56a5e7ba8388f1a07bb0e34ad830371e22db06226453666563f1f297822"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1370/magpie-cli-darwin-amd64"
      sha256 "eb9d6212332041d13c5f1a913df788342be4bb369c1624dc0f537d8bd8d2c38a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1370/magpie-cli-linux-arm64"
      sha256 "8315fe981d72082b4510eaee57f5e345275cd4c8f6b2a30bc5526bbff103b3fb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1370/magpie-cli-linux-amd64"
      sha256 "595927c2bb2eeaa2f3a22d840277065b5c10273ced812589027624833cf33808"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
