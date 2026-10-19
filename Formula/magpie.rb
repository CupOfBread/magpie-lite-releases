class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1292/magpie-cli-darwin-arm64"
      sha256 "23f32b7f71f3d4ed6f71eed17d90271f38afd18656fb9338518923a89bbcada3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1292/magpie-cli-darwin-amd64"
      sha256 "e3d9fa7da286e691f93c08f8d94ec0ee29b9d9c348f12c3e5693e6cb7f9e3a83"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1292/magpie-cli-linux-arm64"
      sha256 "6446dfca37360f5219423a20dc3a587e7664fb1a03efc51ea0f9802efa2c95f3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1292/magpie-cli-linux-amd64"
      sha256 "339a54987448f5c31450de42d5f75c2b013be6cf3679ac13113ab464b66e0cc3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
