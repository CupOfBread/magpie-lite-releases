class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1524/magpie-cli-darwin-arm64"
      sha256 "34bb3e7896cc1499e358b44d6f749d38be9bb3a30b53a1339d3ab3c8f37b3233"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1524/magpie-cli-darwin-amd64"
      sha256 "17552d0603e888a9b6d38b97d1f7a0a8326d754552459770cb7f0ab08a59cdc4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1524/magpie-cli-linux-arm64"
      sha256 "50d7e2a30d4c6cdb87476e9c3ce3d89a99b27e1813069344cffb69ce8c97d06f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1524/magpie-cli-linux-amd64"
      sha256 "f59a57f72623fdd8c61d36bcf2617720249c294cf86955d306cc54e84f783c4c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
