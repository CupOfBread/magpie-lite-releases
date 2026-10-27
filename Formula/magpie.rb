class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1775/magpie-cli-darwin-arm64"
      sha256 "90156b686431736a120c6184ca4a3077021a08f99b33382226bdfa8e6ce8fd66"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1775/magpie-cli-darwin-amd64"
      sha256 "9baa2e72d7e70b995df8335062ef4783f679b3c7f201f79464305c7802a704a2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1775/magpie-cli-linux-arm64"
      sha256 "b5d5b615005dfdb74ef3dd30af8d017e94bb588084529e5b61719fe31bec750e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1775/magpie-cli-linux-amd64"
      sha256 "772551040b0702949c62466695aaca2f4c33c741d05c2a1c97e4db82df630474"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
