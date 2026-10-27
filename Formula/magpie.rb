class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1691/magpie-cli-darwin-arm64"
      sha256 "720182f65c0a216ec896184dc05c9a68ed46d2b26352f5d76e93fcf2b062f7e0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1691/magpie-cli-darwin-amd64"
      sha256 "80e2aaad70b9472e100a7425d2d58956bc5cbb705cd3a84fad2b6428b658f918"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1691/magpie-cli-linux-arm64"
      sha256 "2c707f1dbc05a1812626c1959696ac829f4f8dc802a3f9d6490b9448de404230"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1691/magpie-cli-linux-amd64"
      sha256 "0e9930a1b62d14ec53b6da37f6b6e3ad6fff70d60d978b920235cf834b564d97"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
