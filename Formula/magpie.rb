class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1715/magpie-cli-darwin-arm64"
      sha256 "cfd309f7ac86e46bbdb029c4cce8938ad2dfe9a7dfed79ea1be67123fd45db56"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1715/magpie-cli-darwin-amd64"
      sha256 "276fe3289ef90613c6ea3b2156368baebda68656f84135de5e03e67434bd5a07"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1715/magpie-cli-linux-arm64"
      sha256 "f4ee039cf2b144bababd38b86323d176985ce501c7630da039dde3fe9fbc0994"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1715/magpie-cli-linux-amd64"
      sha256 "618714e1903014099ac9c1c2028179acea54cfe6055dca808d3039ea69591fca"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
