class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1474/magpie-cli-darwin-arm64"
      sha256 "4d3acbf01dd335b7c9b057bde0c3ccbc4d9de1895ae4bb245adee7000da86540"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1474/magpie-cli-darwin-amd64"
      sha256 "2ebeed18d08915f5517cd8d7e72c2b8b129130467113ec4bd87efd7d9645e0f7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1474/magpie-cli-linux-arm64"
      sha256 "860a405596fae00225f91d0d874b926830d6780f55660b9f6f8b1e334484476c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1474/magpie-cli-linux-amd64"
      sha256 "134b6f9dade051724a3d6844a87c029201b3fed19e60a4a168f001c47a163fe5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
