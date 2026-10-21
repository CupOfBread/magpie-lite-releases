class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1310/magpie-cli-darwin-arm64"
      sha256 "2509d624a161429704fdff7917bb767bf8e46d4f7875659ae6c296f514b30dc5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1310/magpie-cli-darwin-amd64"
      sha256 "67ee148f340ffe9ba0f8b905043dbc2e8c055fd89014a26a4f2c70648921e82a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1310/magpie-cli-linux-arm64"
      sha256 "5c181b2b83e2d9b6621dd3ca9a581046ffbdd09e0907a70aa20bb9d24fc7c4a2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1310/magpie-cli-linux-amd64"
      sha256 "a9d563080ad379ca30a3d7bb1f7e43a5794160a3ba2d43ad479becf40de44b5b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
