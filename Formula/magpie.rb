class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1431/magpie-cli-darwin-arm64"
      sha256 "8d6a4bc45697d98acdccf5d1e4415c39879da0d3c9bee0029636e4cf0e5079a0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1431/magpie-cli-darwin-amd64"
      sha256 "1e88d88672a078a43dfe7448bebdf5bcbabb176d5fa831aac594795b1e1602fc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1431/magpie-cli-linux-arm64"
      sha256 "7ebb04d6da98073e0855ca649780020abc23a6e2b80e699a95db9bc794ab1e51"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1431/magpie-cli-linux-amd64"
      sha256 "df9cb41d6e31a8702596c486af7e455a943272737b78e216fcdb57bd6ed3ff9f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
