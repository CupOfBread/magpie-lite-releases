class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1302/magpie-cli-darwin-arm64"
      sha256 "969790f03a3a56ac3672cc480faecb78724547fc7b0c725313ee71f3353a75ff"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1302/magpie-cli-darwin-amd64"
      sha256 "8d9b40317873011960ca56730293d9647c549045248a55fdb4c00830cde64b71"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1302/magpie-cli-linux-arm64"
      sha256 "1785e459f4d9a96b8de6a8013c708f80a71561964307875daa5c1769e007edb6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1302/magpie-cli-linux-amd64"
      sha256 "aadcee360fc10e23d68272ee6717fb5e92c99f2f576b50d2fde3382efe01b8db"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
