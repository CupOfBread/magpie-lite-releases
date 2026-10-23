class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1333/magpie-cli-darwin-arm64"
      sha256 "f454cc94dd6e174bbdd62fbe321f61ce3992d5873b028a7d2b1370681d7cfd9d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1333/magpie-cli-darwin-amd64"
      sha256 "8fb7dcff8d1d729854145a9ca9403dd3e33f7fce8a954e327c1ab8be80956cd2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1333/magpie-cli-linux-arm64"
      sha256 "c6203671b0d945cdc6b38f71fe56511680f2cdc3a321650de510bcc2e1057b4c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1333/magpie-cli-linux-amd64"
      sha256 "be08e7a460e3ecb1f8f0fe60c592d3ad604b1bef80a6012a230fccc090067bbf"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
