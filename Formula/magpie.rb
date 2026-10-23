class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1358/magpie-cli-darwin-arm64"
      sha256 "4a7c5205e2bb116b8b00b34ea7a9c04f04134e8cb036a604cde80c02603b3507"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1358/magpie-cli-darwin-amd64"
      sha256 "2711f4faec33100dcf2abf82d8134035ee3da0adbe61f44fabc5046dc8394f62"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1358/magpie-cli-linux-arm64"
      sha256 "246c910d9d60aae4ff99602909ead94aee7d3d94a0b435bdf066817a89764018"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1358/magpie-cli-linux-amd64"
      sha256 "6e8e7b8ef25e5cf116caad24bdd1122bed51341a67e5bc2366291764ce829ba7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
