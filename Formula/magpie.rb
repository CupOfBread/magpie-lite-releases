class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1327/magpie-cli-darwin-arm64"
      sha256 "8a5ed6c5cf87dd8dcc1749cda95364910368d129d320c1c5fba812fa8857ee3b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1327/magpie-cli-darwin-amd64"
      sha256 "f93bf2ac3659853212068c72bfd4b9346ffcec6c886268eabc66f766dd47262b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1327/magpie-cli-linux-arm64"
      sha256 "08257acce71f8816bfbc6b1ae53056f2d1fe1d1dadd59e2fd1698fcd4960c688"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1327/magpie-cli-linux-amd64"
      sha256 "0f435652cec480f0c579a813ff2f255cfbf6be2943e2a1c36ea14d1b95a5738a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
