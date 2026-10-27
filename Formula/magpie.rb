class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1780/magpie-cli-darwin-arm64"
      sha256 "8f96dc7a1b79dfb250838f57accd503b512299570215a8b91e0f9dc0fe0e038c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1780/magpie-cli-darwin-amd64"
      sha256 "6876390c3eab97ac0eed569bb8cc5fefc180cae4384457dc16101aac8ba75d2b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1780/magpie-cli-linux-arm64"
      sha256 "cc3c79805648da04e8fde56e6869233d4cb6c047982ecc13ea104362881779ea"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1780/magpie-cli-linux-amd64"
      sha256 "9a16b70c5b7bdfbcdd4c51cd4f17b53c572da5d16d374cb1230bee25abdf61cb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
