class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1794/magpie-cli-darwin-arm64"
      sha256 "e717a325f8708114773c31c78d49fa6519db1205ecf0d93564ee53ce192a21b8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1794/magpie-cli-darwin-amd64"
      sha256 "d8b9e6bc2e2ccb8ddb2291b98292e475acca4d185602b44129aab6e5433bdad6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1794/magpie-cli-linux-arm64"
      sha256 "fa2b54dc8e21ad17a05cfb3bbaa5cd329b2c9dc5d221b5999b517a687fedd9c7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1794/magpie-cli-linux-amd64"
      sha256 "c4326ac1fb2be6cb7556880eed5d12609ebf42d4e2705d792623f19264a7e318"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
