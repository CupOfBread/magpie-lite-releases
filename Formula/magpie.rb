class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1828/magpie-cli-darwin-arm64"
      sha256 "f701e8290b36372e0a4907395595d19efd09b6b9e1940f72b0d95714974a96c4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1828/magpie-cli-darwin-amd64"
      sha256 "31de1c3ace4b52e7411fd0e37d8501adebda5585260730d44441263aa6479df2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1828/magpie-cli-linux-arm64"
      sha256 "c3b38e0d33789c5f53dd21392cd7393c5002760465dc82384efff7701fa03442"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1828/magpie-cli-linux-amd64"
      sha256 "f3e651c8443a80344d6927665d30bf97df41331c2a1f09ee0ca8eccfa5a8d553"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
