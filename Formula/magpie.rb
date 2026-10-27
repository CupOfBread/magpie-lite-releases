class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1776/magpie-cli-darwin-arm64"
      sha256 "4a3f2916cacbe1c1a8fb7496278ad3ad0f2d7a16bbc241376dc232aec17fe946"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1776/magpie-cli-darwin-amd64"
      sha256 "50acb775a3df975016c9d62ab5aa5f6cd6f9beeefde6b8733e870a628a848221"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1776/magpie-cli-linux-arm64"
      sha256 "28e40337d27743e788335ea8dc52012a124a1fbd8bef143521f83092c39c5c11"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1776/magpie-cli-linux-amd64"
      sha256 "af0855cf499026fc615b6b179bd3016c415b915642d80786e371b94fa22312ce"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
