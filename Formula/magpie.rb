class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1486/magpie-cli-darwin-arm64"
      sha256 "c1a48ef6a6781ba40b594de54786949337afc7c202bb9d836df30543ac47cddd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1486/magpie-cli-darwin-amd64"
      sha256 "5c5fe9ad91d7b998ea7063e50591e5255bf9b332f4e86dfc00f774c2bb16be19"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1486/magpie-cli-linux-arm64"
      sha256 "69c8e00216f9df618fff921f4ec5307b87cd4584d033bfb2b695d3970cfafe20"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1486/magpie-cli-linux-amd64"
      sha256 "39473230b97fea3622a09b8149a5d4cd898aaafa066f4717234d3cfe69027388"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
