class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1599/magpie-cli-darwin-arm64"
      sha256 "160f08674b4b15e430550896d937d245bf1fa5ad4f7ecbe02aa9fbd5753ad0f2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1599/magpie-cli-darwin-amd64"
      sha256 "0267c53051d1a827ea1b8f206aa5d45f6f0ad4d52b6d9e1f72865511e93d8ce1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1599/magpie-cli-linux-arm64"
      sha256 "9aba373d18585046040246cae4cec8dbde17adcefed85401983868a7a1003f25"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1599/magpie-cli-linux-amd64"
      sha256 "8052c2f5b0a0c07650613f42598b853467f1c09aa27ad39d009e0030bcfd9f5f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
