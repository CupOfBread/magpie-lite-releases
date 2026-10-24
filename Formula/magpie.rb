class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1379/magpie-cli-darwin-arm64"
      sha256 "df79fea477a18b79262a3673de5d9e0875d16e836811b4ea9e95e1eb3aaf74e6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1379/magpie-cli-darwin-amd64"
      sha256 "71b7cbd5d34da220fde5dec3a57c35906cb7404d69be84ab672f18c3d642b7b4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1379/magpie-cli-linux-arm64"
      sha256 "090ec24adf30974932cf7d5cfe2f56153ead254b3df106529e2a018ac8dd6258"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1379/magpie-cli-linux-amd64"
      sha256 "3618b24bc1c273580d270b555c9a898df531aae12ae0a7d8208717d0388d31aa"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
