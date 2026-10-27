class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1741/magpie-cli-darwin-arm64"
      sha256 "b9287e3f1550e4a07660922fcdb98aa833a5a50c77b74cfdeaed8cfe1000828c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1741/magpie-cli-darwin-amd64"
      sha256 "881be018bf7fe7ffbbe424c70320addc6711192610e546e3eb4e4406f46f1c38"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1741/magpie-cli-linux-arm64"
      sha256 "cde7b896c831e2ea1712f21ef6c4c3dd9f47b851e9c8349443faa2c38e368fdf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1741/magpie-cli-linux-amd64"
      sha256 "9159baa6f70886a0b9bd4cf8fc1e6fc8c1761177e79ae3459e44b87eeaaad41f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
