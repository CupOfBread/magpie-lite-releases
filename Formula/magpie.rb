class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1459/magpie-cli-darwin-arm64"
      sha256 "e0fc3b34fb03cac67d45db41acd2b71e34b9ec38b1a79ce8b897a10d06ebfbe0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1459/magpie-cli-darwin-amd64"
      sha256 "efff26adbd450804a8b766ab4f7ea999cb1e26278c661b89eedd3019ecce1f65"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1459/magpie-cli-linux-arm64"
      sha256 "874dc5d685ea2f69fb4d18b00a1c807144cbb1888983367e64aca65a049a717c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1459/magpie-cli-linux-amd64"
      sha256 "cfaae81a285e50b1a460b0f49a55f7f03a42d24c2f3c345de3d7f0ead3de006c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
