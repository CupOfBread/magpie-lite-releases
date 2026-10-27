class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1689/magpie-cli-darwin-arm64"
      sha256 "e4c1c054dcf9344af76fc91b3972fda562c6d57a84aed925d6eb808fb0d00e9f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1689/magpie-cli-darwin-amd64"
      sha256 "45fb389030a5f4d1c0fa1c4ed6f700fd8b065048035ec98d8213383095618e1f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1689/magpie-cli-linux-arm64"
      sha256 "781dda82752e000408ef21740540c8e71dce2afc41c7aaf5dfcdde85a499026c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1689/magpie-cli-linux-amd64"
      sha256 "3dc60f6c78acc476899b686908842ac41f16136db0064a833927eadb984b8f59"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
