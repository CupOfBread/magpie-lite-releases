class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1802/magpie-cli-darwin-arm64"
      sha256 "abec76e19c24076b32efef0f38512899b8fe5333ceb876c6dee3abdc4c01e509"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1802/magpie-cli-darwin-amd64"
      sha256 "75a245192b7a9ca0f0a9a85c75fd39bf3ec7e26b0705ebc142591b4dc5e66c83"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1802/magpie-cli-linux-arm64"
      sha256 "0629f69f6cab2895e3ac7afe3c45fd2280bca97da0dee1e5f77898680353482a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1802/magpie-cli-linux-amd64"
      sha256 "f813f3f0666fe216b4e02bfadfee0bd462904c2a222a57581b5c639de44d7b10"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
