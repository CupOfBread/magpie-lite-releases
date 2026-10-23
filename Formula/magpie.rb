class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1355/magpie-cli-darwin-arm64"
      sha256 "578eab640e2de2025e2eb01844f54d7c6eb0a0f44ddf212105ec9b251bc01d3c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1355/magpie-cli-darwin-amd64"
      sha256 "abd93347032c551ec3b06b173fc75dc4e5445aa9790eb84441f2d95d97155228"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1355/magpie-cli-linux-arm64"
      sha256 "b9e23f9ee6e4d81cd6cdbd290b375eb91c3910fa8232717cd671d6b7d61504f3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1355/magpie-cli-linux-amd64"
      sha256 "115e0be2316729ffbcb24b1ef14ca159e94cf07418cbf531fb0c04b842ac2fb5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
