class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1792/magpie-cli-darwin-arm64"
      sha256 "a6a7c415816259ffd8b8368c0b66d86edd79e3459ca3006d33c8c0ea02d4e51c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1792/magpie-cli-darwin-amd64"
      sha256 "e1130c1112b35bb13263b1d6c710b321f47c47e7cdba1a826c1cb9d903f38762"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1792/magpie-cli-linux-arm64"
      sha256 "415ab895132d1fed21215df6cb6ae9ca6ce662ff89f7665ef4269d0a44dc4477"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1792/magpie-cli-linux-amd64"
      sha256 "19eaab60bca0d482c4e9536cf4bf2912b92cfe88f82dedbee2236b772e648a53"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
