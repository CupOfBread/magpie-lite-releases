class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1672/magpie-cli-darwin-arm64"
      sha256 "71cc98230c92757ab00d980d0edee76f8d60b217578de880713afc1375a1b41e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1672/magpie-cli-darwin-amd64"
      sha256 "1467214795ee07fdbdee85a3a787a1bd72f5c7aec7b924f9a780cb5fd8bb3740"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1672/magpie-cli-linux-arm64"
      sha256 "b2d9314a4915d21506087b90858dd984a419b56a455b911ce3b07b6ab2edd4a6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1672/magpie-cli-linux-amd64"
      sha256 "bb52969faa8b38ba9c71eaaa845b00f3132b351268b8a2f5ff1fc8fa140fae53"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
