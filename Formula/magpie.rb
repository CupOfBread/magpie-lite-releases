class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1542/magpie-cli-darwin-arm64"
      sha256 "a1ec48a390317333652b3b0caf79c0fb871cbc50fbca5f2f85848b1f8829fe6b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1542/magpie-cli-darwin-amd64"
      sha256 "e5972aed2e4d886747bbb252e56464a3b2ee81cfcb0353fa826ba1cb6743037a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1542/magpie-cli-linux-arm64"
      sha256 "763e64d8bb34713b35972a7ce1a1d2b8ca0233f2e37e6e1af0a31e31dec0ab7e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1542/magpie-cli-linux-amd64"
      sha256 "40dbf18c6b63c838f994ea7961973bda04ed92f5ba378415e2d5a7be0a669154"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
