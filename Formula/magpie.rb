class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1604/magpie-cli-darwin-arm64"
      sha256 "79aede698caaebd093e0f97a7e09270a7e8927f97c76cf0c7db73f95f23a8ef8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1604/magpie-cli-darwin-amd64"
      sha256 "a7ee5413f35e7c2fb00eb895ac32dc71e809ecac58130e1c01ce0a41ba1512b4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1604/magpie-cli-linux-arm64"
      sha256 "ec98787acc341e311586672c68543d288513610de1b8a2f1a17784e9cc9eed10"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1604/magpie-cli-linux-amd64"
      sha256 "78119b3e8d98eea005f9a4f77e5dff17ac8201b79011f6dd6fb7db26d8735e2f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
