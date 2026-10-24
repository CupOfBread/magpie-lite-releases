class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1448/magpie-cli-darwin-arm64"
      sha256 "b2ea1c3280208f40578ef628eacd26887162402dcba580f292717358c218fb8b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1448/magpie-cli-darwin-amd64"
      sha256 "d23303e597c0b4b89487f2e9d5277c4eafaeeab5b8fbe0aa634dce3b22c49ec6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1448/magpie-cli-linux-arm64"
      sha256 "168d3a3fbd37a2d647a7e67859d37015724cabf338666b29bdee21ae6dbd8df7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1448/magpie-cli-linux-amd64"
      sha256 "90dfb475c12f9a5c51fc9c1d7c9b08812efe6660a2628d4ed0d1fe85b3cb5163"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
