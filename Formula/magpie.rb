class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1636/magpie-cli-darwin-arm64"
      sha256 "9451f3d59520eaa1ef24b170212597fff07a9dc36e801dd247efc48d895bc851"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1636/magpie-cli-darwin-amd64"
      sha256 "24ad6b8bfdbdc604f741dfc64d7ef3dc308a364e0c95f6ba0455084570e73471"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1636/magpie-cli-linux-arm64"
      sha256 "e1340c8aff25443b1d8ed83f267069098953c61df4eea1b7e2383ef8f6018961"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1636/magpie-cli-linux-amd64"
      sha256 "bdcbe9009db22f401f84ed28769afd656e28a5b49ad31c99fa4e8058073e73cb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
