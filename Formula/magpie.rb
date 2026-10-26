class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1622/magpie-cli-darwin-arm64"
      sha256 "d58c047080f1a4c946242b66e3a2592617640799ed1b39012dbaa0ab2d92af36"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1622/magpie-cli-darwin-amd64"
      sha256 "de4e76b53b87688bc8e7e5a5770a56fcc0b607724deae603b5ad4ef244ec67e2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1622/magpie-cli-linux-arm64"
      sha256 "a851dc51104cb159f80aa362e0cf3fb4482a754ba881ff2d8a3050d33fbef103"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1622/magpie-cli-linux-amd64"
      sha256 "2976899b7169450d0bc7c53984da6dcc0669d5701f2735986379fc7fcfb01a7a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
