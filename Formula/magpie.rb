class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1349/magpie-cli-darwin-arm64"
      sha256 "50fd27bfe53226f213eb2c8aed5578114ef0a0420347ffcd4dcc8be0746145e7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1349/magpie-cli-darwin-amd64"
      sha256 "930769b165a1bcf772a7924c6870fec0f4c7eded4b00ae7f3f81f0f871f54c5b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1349/magpie-cli-linux-arm64"
      sha256 "3badafa55a8d4ff94e76acfc36c46e6f5462d47cd65dcd4b88847308080e5f16"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1349/magpie-cli-linux-amd64"
      sha256 "4ec212e8780a53863cf27475f0703809091c4b9209c99158d077a34e9577681b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
