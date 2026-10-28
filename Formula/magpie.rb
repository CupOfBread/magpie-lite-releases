class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1803/magpie-cli-darwin-arm64"
      sha256 "322ed9b30cd7ea7f594e62339a51c110849bfe37628bd99239e13260da07fd43"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1803/magpie-cli-darwin-amd64"
      sha256 "b988592c4b727a6b9693cdd7a8995d1958a11c4204ad936dd64818ed0bfcee94"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1803/magpie-cli-linux-arm64"
      sha256 "c3e0c27b454371b37741c7247f8f34f87987c6ef878ad162c2b9162ba5129125"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1803/magpie-cli-linux-amd64"
      sha256 "601b01848f35ae76ce4e047608a5864962c9bc1818b21ac5a5dcf3295f5c5049"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
