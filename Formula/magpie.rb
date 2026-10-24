class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1460/magpie-cli-darwin-arm64"
      sha256 "d47dfbf793c66f983865b828a10d8d5de96f9300443a14e395cd9fb80527d225"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1460/magpie-cli-darwin-amd64"
      sha256 "0073e7500e5872259ca40d9bfcfda5819ecd05cfe1387821dca174731c2aad7f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1460/magpie-cli-linux-arm64"
      sha256 "78f438c52bc58274237cc7df2e37976e292e35e80c88f84c4a2f9042120e3af0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1460/magpie-cli-linux-amd64"
      sha256 "e3e3d48b63566eecdb6fb9fe9c3761e3f8c624041dca8687ba550c97d234bf50"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
