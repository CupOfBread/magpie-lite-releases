class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1513/magpie-cli-darwin-arm64"
      sha256 "780eb257f826113bd8010ff3c92757ade6fdfad8dad23c4b55c223410f72cf5f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1513/magpie-cli-darwin-amd64"
      sha256 "c371a0a1f182749513c263a3312577998eb465aca6c702f4fd119943463bfbf7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1513/magpie-cli-linux-arm64"
      sha256 "c91ab98a6a825b29338ad498ce02b5769bbde3db29b1dd162eb968ef2d9c7aaf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1513/magpie-cli-linux-amd64"
      sha256 "070c4578c7854d8de6b6fac7a3f673c440e3bda1995806c6a32e926c4132d687"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
