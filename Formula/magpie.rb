class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1720/magpie-cli-darwin-arm64"
      sha256 "1aa919414239aafe569e7654f1460b9dd444242a94d96189c1b53963651de85b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1720/magpie-cli-darwin-amd64"
      sha256 "cc6b68009fa87d9811b5d6b4a439564e150321953acd726ab7d4b366f908f6bd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1720/magpie-cli-linux-arm64"
      sha256 "1f52555c7304204f1fec9e100527edf9da9d538deadd26bbd912e770fa27ea49"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1720/magpie-cli-linux-amd64"
      sha256 "926b0e595e0abe3ec7ae9ce6e056885fd69f99fa7d4ae601c24dd669ccacd273"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
