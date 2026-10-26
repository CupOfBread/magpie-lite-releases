class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1576/magpie-cli-darwin-arm64"
      sha256 "eb89887bcf86fa6cee2d1727653fc530c408b332624b5337844ec51090f56f9d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1576/magpie-cli-darwin-amd64"
      sha256 "c83fbe4cd78be07539b9dbd95bd77dd1c7ff5666a140d33812b708758b59ab2f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1576/magpie-cli-linux-arm64"
      sha256 "07d93b304be79e2ac4ec1f16a6385dae97f6b8ffd0b64425104a5e8a6a2d3e57"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1576/magpie-cli-linux-amd64"
      sha256 "dc55fbdf2c620b3ccf8c9f6d6f5e6748afff22c1cf95c101dcb92564f58fdf03"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
