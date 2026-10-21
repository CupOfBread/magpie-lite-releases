class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1318/magpie-cli-darwin-arm64"
      sha256 "d500039f0b70a8b4ab432355b219f6ade9a4ec91c1b0f96b97717a56d3392aab"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1318/magpie-cli-darwin-amd64"
      sha256 "db5e58d7eccbd09f9317512d85194fd45c7b34891ff0a5f146926cea34bc7bb7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1318/magpie-cli-linux-arm64"
      sha256 "045937e2d7b9ff9ed573c9f10adadea901ce1552a2cbf9860f28da8f135e5ccb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1318/magpie-cli-linux-amd64"
      sha256 "55609bd157f38cad7a2a2ea9fd51f92938b73ae14c9b1cc54435a6d66e8d8134"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
