class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1502/magpie-cli-darwin-arm64"
      sha256 "03621b5c8b6ec8f8b9717db373e8cb48ae756e7bd732e49dcdfb8a308487d2f8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1502/magpie-cli-darwin-amd64"
      sha256 "edc40ba2400c29a149516c87289996753c8558f54a61ba804494057ebfe40eb2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1502/magpie-cli-linux-arm64"
      sha256 "a4eaa1b90835780d96477b54db05cb09c0b5e2185916d06253516c769ef7c295"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1502/magpie-cli-linux-amd64"
      sha256 "5b4c522afe75825f7a65538ae40fdc7dbc8eb9bd5934c27b0db5cda3df6dbdeb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
