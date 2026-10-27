class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1662/magpie-cli-darwin-arm64"
      sha256 "5141a9448cd1d6d393a30bf2d5124cbf0a4b6f8a85555ce948d8282dec0c14ca"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1662/magpie-cli-darwin-amd64"
      sha256 "99e9f37f42987869c9f9899b2da9a37dcfced6af4d22494eeecc3da02e50bdbc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1662/magpie-cli-linux-arm64"
      sha256 "9f24bad120563d3245baec4c385f51c833b280de7a0f31f6187fba7e9c74ba2d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1662/magpie-cli-linux-amd64"
      sha256 "c5ae3a6d3bb1d5aae84e669acc5c11c76a4c2ae5f4ac4a00ca03e6deb99f76dd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
