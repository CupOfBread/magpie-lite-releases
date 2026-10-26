class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1581/magpie-cli-darwin-arm64"
      sha256 "a592924c731ca874dfb36ea194411f470994112aa6a9535af4b599c183231757"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1581/magpie-cli-darwin-amd64"
      sha256 "5ed7e241e0013a6721996341e90400811f13ab577fe68ef7b9af67c6655be9c6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1581/magpie-cli-linux-arm64"
      sha256 "05728b447565a31f22f150def1bd117c6e9295dd3f5ee5db72e4ea17b45d99a5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1581/magpie-cli-linux-amd64"
      sha256 "f5c9590628e0bec527a966c203a79d610254e77f0d26fa51ad15af8b6c4f277a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
