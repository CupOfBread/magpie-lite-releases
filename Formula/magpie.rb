class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1756/magpie-cli-darwin-arm64"
      sha256 "8b7e324c4730ae5ece657f2fe64e68dc982acd7255e4bf40133c85af1a79480e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1756/magpie-cli-darwin-amd64"
      sha256 "3acef55613f63d50ef85d3214e9b9a6f1eb7e293f04298be92e1411c4f561eb4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1756/magpie-cli-linux-arm64"
      sha256 "0119cf5827883943711029742676f443f486f2e44c14a7598715a371532265c2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1756/magpie-cli-linux-amd64"
      sha256 "8315006af44374841a930cfdbe24119e33f01bf43e7c0f7425dea5e4a778b571"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
