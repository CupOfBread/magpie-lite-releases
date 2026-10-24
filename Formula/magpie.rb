class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1439/magpie-cli-darwin-arm64"
      sha256 "ba51ee37fd46a361841cd05c78d22d8468e2f6045dfe772de800bdde90cfc28b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1439/magpie-cli-darwin-amd64"
      sha256 "a0f6172c6030a0dab3a265249fb075f65d00f53deadfb8719c7c6b5fea80c8c4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1439/magpie-cli-linux-arm64"
      sha256 "3bda6e7b87f2c6442892de67704ba4e158ff0ad68d2ea66dbdc509e5a93b8d20"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1439/magpie-cli-linux-amd64"
      sha256 "59a796fb91b69456344a87db3eb7578197342bb5570d2e7756cc1150f8483852"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
