class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1456/magpie-cli-darwin-arm64"
      sha256 "14fa96bef4445c363c532ded7ecf4eee686e2c3eaf0d45594c2e60b0ef41ed59"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1456/magpie-cli-darwin-amd64"
      sha256 "33392157243db5b7d27c7f86367773b2dce4ab49ce157849c41c3df1c9fb0b19"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1456/magpie-cli-linux-arm64"
      sha256 "041b5ba14aaeff142862059675cd7779d689927b32748357ddcd2260d25410c6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1456/magpie-cli-linux-amd64"
      sha256 "ebeb05633340e6e8cab7b87439ab8d9c47176704ccbf0be4ed2a4c063e69d44f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
