class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1463/magpie-cli-darwin-arm64"
      sha256 "78748ebde61b16d1a855a18886b42cd42a1f0a25f26e04a5e7d929b8c0129146"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1463/magpie-cli-darwin-amd64"
      sha256 "26c037c3eff7ddd0a52eb073580e5e39e24dd21a947d063e58fe53d63155ba81"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1463/magpie-cli-linux-arm64"
      sha256 "f17db2297a8094280f03e7c43143d919d1e7f5ea6ee1dc2da5421e025e6be8f7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1463/magpie-cli-linux-amd64"
      sha256 "e900fe232bf8c2f9064bd3332bcb4bc64e198831e80d622d84986fc26687285a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
