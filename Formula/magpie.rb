class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1421/magpie-cli-darwin-arm64"
      sha256 "3520e1564dc1e85f907c5d69e65f7992bcd255300d5bd716f56f1f68c46c7161"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1421/magpie-cli-darwin-amd64"
      sha256 "af96850bbc96f126818eb0f9705737404e495a51dd85f2e1433cfe3e2e4fc05c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1421/magpie-cli-linux-arm64"
      sha256 "cd3d37c0048ebdb3905f31e5e4fb1c911af6472a23621aae90d9e8276d7159e5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1421/magpie-cli-linux-amd64"
      sha256 "705127d354934f9092fbcde20016e33ab3b263023d0055590ca8395aba5011a9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
