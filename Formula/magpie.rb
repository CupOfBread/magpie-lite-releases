class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1578/magpie-cli-darwin-arm64"
      sha256 "2250e45407787f6789f3740905802408780ceab10621dbf78df91ce67c1b7cc4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1578/magpie-cli-darwin-amd64"
      sha256 "d16fa20857810d721f8d27ae83b5b7e3ea7dfc9a875bd66dec91e7dd27aa16bf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1578/magpie-cli-linux-arm64"
      sha256 "5be7b81a39d7a1ef65538c5493d5b4e7581a8a886a70f6d68ec9dcb5d259fa41"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1578/magpie-cli-linux-amd64"
      sha256 "4ac52be0a7e92cffff0fc53686631bd03352ecadf811140cc075a99e01b7b225"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
