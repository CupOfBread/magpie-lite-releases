class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1769/magpie-cli-darwin-arm64"
      sha256 "948b2048c0fadf65cb065687341f952ec129009095ca04d46fd4fb60df0dd763"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1769/magpie-cli-darwin-amd64"
      sha256 "9c1d2e91ce1258e9c2fcf876aa9613723adc5d9e4cc67f20fa7cf81e00d99120"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1769/magpie-cli-linux-arm64"
      sha256 "2160adb19cccc293b0136db139c4a85b0b0210a06b9efb9009e66737dc0e7615"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1769/magpie-cli-linux-amd64"
      sha256 "dea5fa0576932d6924f75ddb30879943c2f7810be45f32030405dc4fb95a3fed"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
