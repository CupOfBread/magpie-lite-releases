class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1730/magpie-cli-darwin-arm64"
      sha256 "a66dfbea01abe3cde1d36bced8edca892a6b7edb067d186cf607356494cd2fa1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1730/magpie-cli-darwin-amd64"
      sha256 "b4c7404b633d907411665b46d3461a5b55a16f63e98c61e6416cb26661b9b999"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1730/magpie-cli-linux-arm64"
      sha256 "ce7be8c511fa816be9bb5025ac781ae79920676ef2d7b184bbb199453ada6fe4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1730/magpie-cli-linux-amd64"
      sha256 "578516af0a22c1a9f0160fbd8663fd0651f74d2022ae37417243e7e61df240ad"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
