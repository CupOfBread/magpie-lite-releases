class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1321/magpie-cli-darwin-arm64"
      sha256 "6ff13adae202280410e13603e6e25abef56aa18d826242ea798c02ae62d925d0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1321/magpie-cli-darwin-amd64"
      sha256 "172be8d9e7c8dfd536b729b0d26a26d50982de9639bf0486711082736e034f06"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1321/magpie-cli-linux-arm64"
      sha256 "34a510d94f05224091a0ccc21762caeb3724a70988fb942029a98f605ffa84ca"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1321/magpie-cli-linux-amd64"
      sha256 "9ca7d617023eee0000866f69cd36e5e711f34b0e4ee619a0305c7b936ed11f7f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
