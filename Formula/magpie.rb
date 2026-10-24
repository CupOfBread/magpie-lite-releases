class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1444/magpie-cli-darwin-arm64"
      sha256 "80af50dbcdedf858e8085323b982607d7e74d287d7e8295fef20bb2f68664025"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1444/magpie-cli-darwin-amd64"
      sha256 "1efea7ac39c48df050adff8c51c3b47a499ab5364eac93e9ba211e8d7699cdd1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1444/magpie-cli-linux-arm64"
      sha256 "3299d31065139a213294dd051d00752f601886c2d7372e1809b4811baf7d8a70"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1444/magpie-cli-linux-amd64"
      sha256 "5f0dd9fc1d03af7c85822120847d6ff0af2b37fbdfa80d7bf4ef9746f9771d9a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
