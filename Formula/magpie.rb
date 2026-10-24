class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1425/magpie-cli-darwin-arm64"
      sha256 "8d0a837ad9f4130262ba3a49726c8742f8cad7e4fc961154c8c315bf57e4f0ce"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1425/magpie-cli-darwin-amd64"
      sha256 "96b6097a86c6e89a8a8d5d46f4df27cc86284c86741a75ae62bab077e8411c43"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1425/magpie-cli-linux-arm64"
      sha256 "d24c910e8dfc3b2fa2270fe2ac6991253882d7baaeb90c09f209a6156a555993"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1425/magpie-cli-linux-amd64"
      sha256 "60f070edcb3b0bc01222b1b78cabd06a7135f935a319f378622e8b71a45e1509"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
