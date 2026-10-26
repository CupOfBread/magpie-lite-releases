class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1587/magpie-cli-darwin-arm64"
      sha256 "725158da19e994c654c04b7ce5fc21462c2e0ec68bf24f14c95b03eb45e32d21"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1587/magpie-cli-darwin-amd64"
      sha256 "c916adcc7f9ae60a10c58dbdf952d254dce5f6c21f4d08671aca4d400581567c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1587/magpie-cli-linux-arm64"
      sha256 "554bbdd6d984e5c0966749c3b6e951b2d91ccdd8e39a052959f4514ffc6ce603"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1587/magpie-cli-linux-amd64"
      sha256 "a4088f9310d799055644ffac3f17ee2ccdbb8e09ed89d9608939c0529a1926ac"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
