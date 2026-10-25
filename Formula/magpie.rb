class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1545/magpie-cli-darwin-arm64"
      sha256 "cdd6bcf9cb482e91808ff7c3d675f550f7b92cdc57430de303a53d3064271313"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1545/magpie-cli-darwin-amd64"
      sha256 "92650dc502e7c7c5923a82798f013b6d9f29624a5a3327336e2ae99bb8759484"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1545/magpie-cli-linux-arm64"
      sha256 "33736fdf8fd63967b9870bf9d1b88e4bbdf30d75dcae94277ce0856cffec430a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1545/magpie-cli-linux-amd64"
      sha256 "749e01a6f38ec0f7bd6f917b20ac25d12193c51e7d27ef2a3bf3305792c3dbbd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
