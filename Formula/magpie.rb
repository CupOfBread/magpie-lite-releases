class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1620/magpie-cli-darwin-arm64"
      sha256 "1cac78c715e08f17c39b9e9d5bb86981c97b6f0b79944687872c142805dc4224"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1620/magpie-cli-darwin-amd64"
      sha256 "b950062ab8cde826185fd887fd9572519639a1911350365e587b0b82a5efb934"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1620/magpie-cli-linux-arm64"
      sha256 "ce2cb017a18da3d44f04bc5b1cbe48ba6116212b0d999140e40eb9d09af3e851"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1620/magpie-cli-linux-amd64"
      sha256 "a3115297d8262aa7623d687afe733dfbf29697f89ea44dc7cffc1e7add2ac91c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
