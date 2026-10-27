class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1784/magpie-cli-darwin-arm64"
      sha256 "c3a28b9ba746f2c1427d8aca132bc40ecf70fdc64fb0176ce05fdb5f69d068ba"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1784/magpie-cli-darwin-amd64"
      sha256 "cd022f969a8badb0799ec6120bd5c2f5cda28813c33a7f06426a89be04378043"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1784/magpie-cli-linux-arm64"
      sha256 "0ef9c8e08b91fb7c698ca7f861fb4f7ea1105546fc4a6f55debfebd4a096aaba"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1784/magpie-cli-linux-amd64"
      sha256 "fa9b9f59e646dc822547abda91f6e83e00f21ce464a4c3d84786afa5fe0a5ed8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
