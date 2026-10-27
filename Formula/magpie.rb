class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1714/magpie-cli-darwin-arm64"
      sha256 "7f73085d000f823b272aa378801500cea6da802a8045b5c12c5b7fed06a202d2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1714/magpie-cli-darwin-amd64"
      sha256 "e74712519e3ea1538b58cac79f02a06edc74f03a8e15c9bbdbeb5cae3c1f9e33"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1714/magpie-cli-linux-arm64"
      sha256 "b97d2ae35a32414377d9752fb51840cce8c8f4790d89f270443d649c682c7224"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1714/magpie-cli-linux-amd64"
      sha256 "0d6ae97abb775579ce94fbe81f3ace8af474470ce4f6266eda4b81b098f19dcf"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
