class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1423/magpie-cli-darwin-arm64"
      sha256 "b2f2ddadc0c75868702ad96c6291c8c2a69378434f58794da4942c0393f37f56"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1423/magpie-cli-darwin-amd64"
      sha256 "c361e97efa23ce477aeaa1b6266f5090b8224851d2ec820bad58f66bef4bf9aa"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1423/magpie-cli-linux-arm64"
      sha256 "bc04c5dfead2bcf67f962a065663dc79cbd4a970bacdd65cddf7d9566a883592"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1423/magpie-cli-linux-amd64"
      sha256 "6f4f865ad655a831d556480e2e252959f77f304bd572b4b09512c71e59ad3b47"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
