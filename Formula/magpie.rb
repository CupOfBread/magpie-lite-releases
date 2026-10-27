class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1706/magpie-cli-darwin-arm64"
      sha256 "802251b74b8f303a6363e53e5e1388834d18289e471fc94138d1560a3bb87040"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1706/magpie-cli-darwin-amd64"
      sha256 "81e8ec249dd0c87c42dd00148d477be8e05ab73316192bb475fa72bf891db36b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1706/magpie-cli-linux-arm64"
      sha256 "258e5876a0428bed853f118d12c710944f9e32ef75940e710288674c26329c9e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1706/magpie-cli-linux-amd64"
      sha256 "ffb047ce3e507fc54b0924c050204a1abcf9fd3b7fca8bb211bb0de71abe1327"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
