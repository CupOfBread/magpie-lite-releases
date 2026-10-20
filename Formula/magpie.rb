class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1295/magpie-cli-darwin-arm64"
      sha256 "a0a4286e5463e61757275d865155ace307206a33edac12428b7f5c5ca709876b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1295/magpie-cli-darwin-amd64"
      sha256 "56de6ca4c06febdd8a183dc82d864b127cde41d6779bae4efbd136acdd26d60a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1295/magpie-cli-linux-arm64"
      sha256 "2cada5c6069ef7bda5d9b8d3a1fa0e0fcd1fc70680d833489bfba3db407e3076"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1295/magpie-cli-linux-amd64"
      sha256 "d56281eca5fb6226e7231785bad9bd071512453fa1d5f7eaa0d26e37214e00c5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
