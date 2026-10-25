class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1548/magpie-cli-darwin-arm64"
      sha256 "c66357c2d6c9fb625e864c06a563ece1b2e26bdd713c5a3b6dbd479aebb53ffc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1548/magpie-cli-darwin-amd64"
      sha256 "9ccec352d034a6863f7ccbe84da24abcda8c5b0cb51de4d9599135fd612c780b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1548/magpie-cli-linux-arm64"
      sha256 "4be9aa698a88109a045f328fde168558eea2dcd110e4c1a4e311737be871031f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1548/magpie-cli-linux-amd64"
      sha256 "34419234554deb520a4ead633e1eecbc46796f9c6aa6c06f3b65b94ca8010200"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
