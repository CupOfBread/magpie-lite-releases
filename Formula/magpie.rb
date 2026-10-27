class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1695/magpie-cli-darwin-arm64"
      sha256 "6a34700d786f909becc2f777cf8a751c3d25aca795b32da3520909d0926a19da"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1695/magpie-cli-darwin-amd64"
      sha256 "ceeebf1f54405a8d557214413f5c6980ddbe32c3c6b4ecc376fbbff038e69c80"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1695/magpie-cli-linux-arm64"
      sha256 "2f7f5b494567c910ea17fc4de7f3e5b37a225dcba29a54c7fb9849a3ac7ed7ea"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1695/magpie-cli-linux-amd64"
      sha256 "ac43eff4875228602ef6c0cc5ac36487295068e7c99cdb05445c6e6d6c1528f0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
