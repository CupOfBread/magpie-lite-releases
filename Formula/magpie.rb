class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1808/magpie-cli-darwin-arm64"
      sha256 "5059ae9305a19774b9dea32f2a67e71ec2916815ce0d78233a7652c6d2f4057a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1808/magpie-cli-darwin-amd64"
      sha256 "7beef92c4b88bc14c89ca1dd60d39fe5d4bce4e783f7cd5ea9f8577de60f44ec"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1808/magpie-cli-linux-arm64"
      sha256 "99d29c5876209b30a187cda0cabaee78072966c84e9e470daca9a5ce00339e86"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1808/magpie-cli-linux-amd64"
      sha256 "685ffdc3e4a4e8d3b83b7813d14eabbaad17c2da34b7bc6c4267b91a8e973eaf"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
