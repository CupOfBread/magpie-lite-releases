class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1601/magpie-cli-darwin-arm64"
      sha256 "a3bbeb042eb04bc51002c048b7bd2d9952632a7854e5532563e43ad01d240cd2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1601/magpie-cli-darwin-amd64"
      sha256 "38a9a3f6db1fdd59cc20f3d3fa7b2cca54e88fc421c0c4482ebe2ac692530525"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1601/magpie-cli-linux-arm64"
      sha256 "f4bf2034ff6f19e07bc6c0f191b8b4712e319cc6f891ea5a5a07d254d82eeb84"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1601/magpie-cli-linux-amd64"
      sha256 "d25965a3b1db74f99f783672d101e3f36a2bca71a93694426ad0736bf8149c9c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
