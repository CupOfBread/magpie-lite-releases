class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1561/magpie-cli-darwin-arm64"
      sha256 "634ca77d25442fdb0c48e91cafe7012790f1625f3ed454a179a71280503682f9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1561/magpie-cli-darwin-amd64"
      sha256 "2450c4100a65b103774f63eee13438ca0a886b223b01384bc435abd65d9d0da4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1561/magpie-cli-linux-arm64"
      sha256 "d158cc5149240e2c481aa65c9e1a104b27f843fcc01cc28b28a8dfc77f95529e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1561/magpie-cli-linux-amd64"
      sha256 "360e7900e98a20c2ccd95b630a6727f12034ecbd5f4bbed885953abe64b61971"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
