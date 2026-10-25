class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1512/magpie-cli-darwin-arm64"
      sha256 "759c1d3674af08e4c7e5900645db8552ffa243d664ef089a1b59a608c860d69b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1512/magpie-cli-darwin-amd64"
      sha256 "b554a248d85abe131d82442c8145812f5d439e605811e91b0ec6fc10f6c70221"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1512/magpie-cli-linux-arm64"
      sha256 "995424333bbff43ee488c682bd210ca22def37b0a9567c2a3295a315c70fc853"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1512/magpie-cli-linux-amd64"
      sha256 "10825705f20d5428630613ba7d1a062253276f2d69990aafaa4dcb5c320afa8d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
