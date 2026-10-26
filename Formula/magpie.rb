class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1590/magpie-cli-darwin-arm64"
      sha256 "e31cb0aed7e9f0ab82ec8cb41931b074cf656016cd82f521a278682eff3bbbb6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1590/magpie-cli-darwin-amd64"
      sha256 "e0609aa24a28ce2fb2964d3bf2b3aa87f438ae4d9032ec8fe2dee0e9c0326244"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1590/magpie-cli-linux-arm64"
      sha256 "e73f0ddf9dd259b28ebe3922ad2875908402726bb0c9f1bc850439ec8d832a69"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1590/magpie-cli-linux-amd64"
      sha256 "258e37999d577718a024fed1af40fc54b9397b66f4e9a6b0c141c0f354476d06"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
