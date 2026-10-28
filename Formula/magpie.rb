class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1810/magpie-cli-darwin-arm64"
      sha256 "c09907affe1b3742edcddd949fec7696373b6a76201eff5bb361e7f0b8c8f041"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1810/magpie-cli-darwin-amd64"
      sha256 "5456c604a9cd062e9daf4dd63bad0562384b6ace7d1f1a95f4e5342579ad481b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1810/magpie-cli-linux-arm64"
      sha256 "fea74ec0add7ed7207d4c4b201c45387311a0f917954b6fe3549d2eeb20c2047"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1810/magpie-cli-linux-amd64"
      sha256 "49edc67a06676a2a408b03ff53082dbbe1c269e1c511516ed97d866a4aff4016"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
