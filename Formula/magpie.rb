class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1546/magpie-cli-darwin-arm64"
      sha256 "a731ae48389d5496e6ce0d74c979f8c7d1f2cb0aeb48ac395737049084dbbbf3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1546/magpie-cli-darwin-amd64"
      sha256 "6e33fd66acc121b8ad9556a6b82105b19d78d0fec36fbd9f532a9af19c05345c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1546/magpie-cli-linux-arm64"
      sha256 "34428db29bd9ec1f1f876883872e50f8d8e58a7fe149d2fe84ec376702d0db84"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1546/magpie-cli-linux-amd64"
      sha256 "501114b06e9669e54978d84580badf6d698936ed67d62de59a99f0d73a385177"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
