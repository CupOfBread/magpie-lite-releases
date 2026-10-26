class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1648/magpie-cli-darwin-arm64"
      sha256 "ec56f016fe773dbbdfd6c415c5f61eaa559c8ca7cf51ce13521301332e7741b8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1648/magpie-cli-darwin-amd64"
      sha256 "77ccaa71d64348f46fd48ee4d769f7188dbf66c8f11fdab07c026a655d0a7fdc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1648/magpie-cli-linux-arm64"
      sha256 "e34c8e4551557fdc662afcaccf423f7ef2504367d96f707ab767eb4cf4b481ac"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1648/magpie-cli-linux-amd64"
      sha256 "3fbd1e8af2e418d4a4461672596a341e907d11c7cd3f31c6831a5bfecaadaff5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
