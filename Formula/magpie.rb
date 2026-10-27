class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1702/magpie-cli-darwin-arm64"
      sha256 "a086680ed42054daf064c1e966fcdf59b0588223c3446a9831497b9d05fc0d4e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1702/magpie-cli-darwin-amd64"
      sha256 "1a136474c316dd45db1f9f91732cb69975162fd9bec926b4332bdeaf190cef6d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1702/magpie-cli-linux-arm64"
      sha256 "92efa8c587b84167e7dab2470138dbb66498b8c00bfb12a6fc9131e3b64988bf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1702/magpie-cli-linux-amd64"
      sha256 "a3c8682364f9a64dda95992f21a5a682c6fca38884940b097d00fa7e660c9bfc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
