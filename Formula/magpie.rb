class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1508/magpie-cli-darwin-arm64"
      sha256 "da1ffd6b67ab4af09a082aa46fd6e6acc1f920ef5ed040afafa806370fcdfaa7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1508/magpie-cli-darwin-amd64"
      sha256 "f668cc074267d404b2917cc478c78579a3a2b23a19680c9e636c8b280b23fb34"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1508/magpie-cli-linux-arm64"
      sha256 "8384d3b1c211cc14e92216dd4a1c4153de9a1e17c9a92ee10e0d06f9f471b520"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1508/magpie-cli-linux-amd64"
      sha256 "9ac4f1f18e22245fdfd1248488264235f6008d022ccefbf0fb3953762d084504"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
