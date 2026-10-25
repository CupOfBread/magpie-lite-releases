class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1475/magpie-cli-darwin-arm64"
      sha256 "3a85706ec931d7d88f572e835ac654d0e2050c0fb2bc24f9f43ad4779c252587"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1475/magpie-cli-darwin-amd64"
      sha256 "359f0f0922c73f450a34e6cf19d5660a898f464d2992d2d048fc4523c76dfcb0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1475/magpie-cli-linux-arm64"
      sha256 "eca0750410c7028a66cbf9df3c0ca008deffedc0a8741de56ebe0c12b3ceadec"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1475/magpie-cli-linux-amd64"
      sha256 "d31966d5db03e819a963042a194da05d5761057dac10a7fedbca61a962067a39"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
