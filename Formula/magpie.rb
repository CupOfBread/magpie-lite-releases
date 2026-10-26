class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1592/magpie-cli-darwin-arm64"
      sha256 "4422a1164678a15a8690568f04c0eb7bcac5fb3a38a1877a2f70e7338673cd70"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1592/magpie-cli-darwin-amd64"
      sha256 "1f7ada8fc357cff0ef2fef1f4998805a63f4b1314b708ba5cb938dff21e129ed"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1592/magpie-cli-linux-arm64"
      sha256 "0d9000e242a1b011766f160c98c2e5694a3012b86210d28d0e4bedff83135b88"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1592/magpie-cli-linux-amd64"
      sha256 "64b7dee2137a5e39c710da4f12484a408a091a92773cdd78e37853d7d7a1f09c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
