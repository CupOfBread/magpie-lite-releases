class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1364/magpie-cli-darwin-arm64"
      sha256 "84de6380890dda5a5f41d17e679e273cee06db670e0cba9655a2ecaec2672478"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1364/magpie-cli-darwin-amd64"
      sha256 "af53f78639b01e1f4e958bc6202b4ee0a634840cd6d52786b89e54b97ebf03b4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1364/magpie-cli-linux-arm64"
      sha256 "e599c1f9dab474d161db9fa373178b2fd9405f18f340f73002fc973fbe6471fa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1364/magpie-cli-linux-amd64"
      sha256 "f730747a84cc3932da6f6a84926cf428a10ee2224c5c6dfbf37df9dbfd4dffb6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
