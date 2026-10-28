class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1826/magpie-cli-darwin-arm64"
      sha256 "b4395687a76e049ee522ef0a4f7be7faaae5e22c389675457d28477cb6503f52"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1826/magpie-cli-darwin-amd64"
      sha256 "2494ccbfc47e68273cad813d9ae4ed392951027a497428f853e3277c17407f52"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1826/magpie-cli-linux-arm64"
      sha256 "810cf4f3323158f8cbea64442d0402d3feefba17b085146393b8551086621cae"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1826/magpie-cli-linux-amd64"
      sha256 "aca49a6880abf9ed2e8bed69b73b9ee5681e1ac2b518e1281d7eea9a4b8375f3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
