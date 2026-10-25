class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1483/magpie-cli-darwin-arm64"
      sha256 "9b6c0316aad0a736bd3c98f8d3d9e81d3f4e0b010a07358c4e3cba2bf7365672"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1483/magpie-cli-darwin-amd64"
      sha256 "575a74847024a208ae787e13f5ff5230a1d6746751e468a414895a344778b497"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1483/magpie-cli-linux-arm64"
      sha256 "1baa6faccb261df033f10317eba9253d0a9e8341164d6d7a6dc1c942957f386c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1483/magpie-cli-linux-amd64"
      sha256 "904e772cf0d2daa01cc0d6d6abf5c5be8eb586d1b9ab01d32a293c21d1e1225c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
