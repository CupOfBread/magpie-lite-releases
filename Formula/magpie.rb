class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1627/magpie-cli-darwin-arm64"
      sha256 "bea81770b1a98011d5853f95e1db87957ecc0d5c7335493f417ce75287045be9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1627/magpie-cli-darwin-amd64"
      sha256 "8a5ecede69ef52569469c8052aab7b450da76bb3fd536c670320e719c73d76fa"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1627/magpie-cli-linux-arm64"
      sha256 "83d640deb15a16235c25f017b3653b2b85d9c773cb3b2b142c55ba814c7263b1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1627/magpie-cli-linux-amd64"
      sha256 "07dce2daf61a66fe351435ed4d9ec3254a1f6c1be6a1a81f91a7c25594685bd0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
