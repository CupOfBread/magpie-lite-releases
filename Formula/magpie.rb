class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1631/magpie-cli-darwin-arm64"
      sha256 "cad59f776afbfe85db726e55a5ce69cc9c81906d0e60d72e590f720416e2ff1d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1631/magpie-cli-darwin-amd64"
      sha256 "2bef0d22a060eabbe9cdebf6f3b4c2593c90ebce9cb8e7859acaaffda122086b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1631/magpie-cli-linux-arm64"
      sha256 "b76c92d92cdd8e70a1fe67793a146844259930ef5e130ac54daae5a8971ea102"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1631/magpie-cli-linux-amd64"
      sha256 "04127b8bfe22f4584fd893acbd41400f2fd3d9f9fe49db8f324e2c3bc1503b1a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
