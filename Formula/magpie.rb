class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1762/magpie-cli-darwin-arm64"
      sha256 "a08360428a17b8f1232d8d716840f474295ceaf5b554069dd6d8fd2e51c2f7f3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1762/magpie-cli-darwin-amd64"
      sha256 "57b49194dc4dd3c7e02ce6a5161aa8e3b9e8f31955173346dde1b4aa7ccd82a3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1762/magpie-cli-linux-arm64"
      sha256 "f1efb5e9c6af8d9fdc876656a576d2de5823b1ee70534d6b085c065f5296e9d8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1762/magpie-cli-linux-amd64"
      sha256 "b4ef86eb316dcc0e1a2f17f5768a5a27a963116310c0a62bc56a5f1c9d114424"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
