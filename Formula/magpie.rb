class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1389/magpie-cli-darwin-arm64"
      sha256 "9ffe9ce9cb95b6323fb73476bb89549e892d23236a22cefb0d3eae6ae6b05f4c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1389/magpie-cli-darwin-amd64"
      sha256 "105a921d7d39ecfa00582b25058ab22d1e2b7eb334d38aa25fe96f31620de3f6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1389/magpie-cli-linux-arm64"
      sha256 "0cd770f41ffa75e9e5a4a1391cb4913b140769df55d561423a6ce697745dbebc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1389/magpie-cli-linux-amd64"
      sha256 "a83f06c9e5fe8a3f8132b543c3dd4fc011df6290817f4a3bb767efff6d747cfc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
