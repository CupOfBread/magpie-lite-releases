class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1763/magpie-cli-darwin-arm64"
      sha256 "e24121da1e802708af3645518b318765b09de104bf88838b22de7f46bf1bb579"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1763/magpie-cli-darwin-amd64"
      sha256 "f4301dbdb542a258b711e15a9a421d964ded0fa82a2a49223663fccccd2faac4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1763/magpie-cli-linux-arm64"
      sha256 "c85de11f51336c450f22bdc21b38cfb74324876e3491810e12946f59ed2e2e38"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1763/magpie-cli-linux-amd64"
      sha256 "9e71f59e622fcad52d1057f2b35d1542f5292662e5f7c5d996045c09acb0d01b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
