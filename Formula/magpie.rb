class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1401/magpie-cli-darwin-arm64"
      sha256 "9a1af40590668c8fb6fb1a46234d715c82249d835fb3775216cb9666273aad7b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1401/magpie-cli-darwin-amd64"
      sha256 "fe4f6a6f963e62b50effb05e865fc82f9807c1e037412c18b4a22bb7ca078734"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1401/magpie-cli-linux-arm64"
      sha256 "92c968758386a29858bbacdccb63980cd808121bea6dd2ef01000b4cf60a75c8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1401/magpie-cli-linux-amd64"
      sha256 "8ec95357b7be8ebfcaf7443255aa049ba9412b3f4ea0e2a4cec8b9f32dba7453"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
