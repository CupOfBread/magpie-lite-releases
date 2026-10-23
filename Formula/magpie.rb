class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1363/magpie-cli-darwin-arm64"
      sha256 "afb15da502d77561b254561247f7535276571ec47690c2d8560bb02fc399a059"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1363/magpie-cli-darwin-amd64"
      sha256 "6410ceb4b32cec9bed5d6dc3d6ed99e9509bdc0193933c3df7d7ed7becd8e710"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1363/magpie-cli-linux-arm64"
      sha256 "328647237858565d3662ee18b8311047b2008ee6c75b4c777d589207a473cf5c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1363/magpie-cli-linux-amd64"
      sha256 "8a7c5da176a46a720c384d9ab03251d88753d6a39a6dd90b2afcf3d33c6632e5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
