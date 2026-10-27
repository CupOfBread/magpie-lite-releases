class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1656/magpie-cli-darwin-arm64"
      sha256 "9605178ba4a996870195547bcc2d8c764dd129200d30073c1637d33764b04b6d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1656/magpie-cli-darwin-amd64"
      sha256 "5df531f928a19b4d19a4b1fb796ce42388249da61b57d06feaa5eeb03de88b82"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1656/magpie-cli-linux-arm64"
      sha256 "8c9a04edaba9887a0096d07fea495ddae746b78385ab28017043c33683b13390"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1656/magpie-cli-linux-amd64"
      sha256 "20d91a87617280a50ea8251b70455b0b4111032664f1ff8ff45ecbc8b9f87f33"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
