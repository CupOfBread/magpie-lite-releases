class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1527/magpie-cli-darwin-arm64"
      sha256 "a02e35bd9b6d4ebb010e636b8735f905b66b6e241f079be7d8f81208de824eab"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1527/magpie-cli-darwin-amd64"
      sha256 "50d0a7d9a7008b6344d8238c6394228fd16d83f46ea8825df167369033852447"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1527/magpie-cli-linux-arm64"
      sha256 "d419ff2ff51a7cfc5816d6bb81130b5b98d4eabb21bac1d4b5224e057cd98fc2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1527/magpie-cli-linux-amd64"
      sha256 "7d241a92bdc2dbc1a29e9e1aaa9d53337ae7fbeef05952a51d7cf4de906a46d6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
