class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1356/magpie-cli-darwin-arm64"
      sha256 "e9b859c8b99addc7352acbd497be8d28445fb9f69a6c4ed98bd2f31ca6809c27"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1356/magpie-cli-darwin-amd64"
      sha256 "fc0924fc1467d6256e3d199cab38e8f74bb204ff0d12df6ced323d4727525cd7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1356/magpie-cli-linux-arm64"
      sha256 "37939ef23549e53187769aacd598edf38a3907b67ca6ed750b02837994129190"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1356/magpie-cli-linux-amd64"
      sha256 "6d07bb36ba25e09ded9a93fed548a793aa335998a766cb6f0177e988bc284c1f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
