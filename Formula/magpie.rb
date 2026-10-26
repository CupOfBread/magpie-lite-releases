class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1572/magpie-cli-darwin-arm64"
      sha256 "7de80edb609ed8b9dbc53cf014fe2bde61cc8231d344f6b81dc4d33a407f082d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1572/magpie-cli-darwin-amd64"
      sha256 "e5ba5c7674adb299e1164f27c46237a5289a3a053768db2fce2dfc9dbb6a4072"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1572/magpie-cli-linux-arm64"
      sha256 "8bbab213ebef97d102bc35ab14ebe4dab55c1355006720c964ae3b836dd37691"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1572/magpie-cli-linux-amd64"
      sha256 "9305f9cbe2896b063456cf7c5b9c80b17072d173d43d60a7a88c5e99447ea764"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
