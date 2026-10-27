class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1772/magpie-cli-darwin-arm64"
      sha256 "65926aca60965601c9b042fa7b8e3903caa281bf2f46d6b7f99950365a35d1c5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1772/magpie-cli-darwin-amd64"
      sha256 "e18cd5605b3fec8d3a79c4fd9ad0911fd00b3ae35a7982c8110600b70027532c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1772/magpie-cli-linux-arm64"
      sha256 "01001c56add21558b7907e9dba3b498c56f377060e77180fe99f14e0a68a1ecf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1772/magpie-cli-linux-amd64"
      sha256 "6749aa1c21d16bd0dadb8451440bd02c689ff18a1a89123d100fd01dc7759b00"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
