class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1651/magpie-cli-darwin-arm64"
      sha256 "48f26d2f4a1641ef6c4641d4209d6182a73d3a9fedfab009eb1d4689e6af12ab"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1651/magpie-cli-darwin-amd64"
      sha256 "ee1c09f546ec05c8de687dd18e8f1e7251976f5f56940ac98507c64d2c7756d5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1651/magpie-cli-linux-arm64"
      sha256 "655e92c35c32535947326b215af3e1d1984c9c1aa7f67208d5f876b111d8b0b7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1651/magpie-cli-linux-amd64"
      sha256 "2f3c3fb9990e5b972117abc653beefe3ec66a9cde21b5cd6db649d792aea7b27"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
