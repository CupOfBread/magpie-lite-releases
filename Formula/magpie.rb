class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1645/magpie-cli-darwin-arm64"
      sha256 "5ed05b5eb055f31956fc351cea19eadec66d881dd533e7e8942bf9d07c99eb08"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1645/magpie-cli-darwin-amd64"
      sha256 "5acfd49c85965d056664c00b5bdafafb43552e47ca8a937911c838ac5882688c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1645/magpie-cli-linux-arm64"
      sha256 "2d84f13f664def39875c80f996d71a51197ca63542ee06f09d881338072cadd0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1645/magpie-cli-linux-amd64"
      sha256 "8bf51b8b64ceedd8bde004e40b4cbe43a459b679e54b9cfa2696b1dbb94c8cbe"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
