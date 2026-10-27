class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1743/magpie-cli-darwin-arm64"
      sha256 "9e90d59b7aa7ab0db931a1b71d62265a51d34c4157133a22cbfe5c9a711660bc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1743/magpie-cli-darwin-amd64"
      sha256 "0a781a61bc659d53a7b1d8435b167f1c9676548adc3003250a1a096513bdaed6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1743/magpie-cli-linux-arm64"
      sha256 "7cd84e9b622a2ad224467f5156259aeee95c0238ae53931c1ff7a2991ca59613"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1743/magpie-cli-linux-amd64"
      sha256 "29477e941fc2f63f761f1317265ae031b0b1f1ac4d3e607276f0fdda5592d5ee"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
