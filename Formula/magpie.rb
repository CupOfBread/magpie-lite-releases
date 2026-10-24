class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1453/magpie-cli-darwin-arm64"
      sha256 "0f46dc494691929e7696402c924dec93880fc7fe555c7ff40eac017a40db906b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1453/magpie-cli-darwin-amd64"
      sha256 "13765c72b4231e126833250abf7914f3eb109b2ea6781c09ced46ac5da202c25"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1453/magpie-cli-linux-arm64"
      sha256 "74ca6fbb7ec619ad183e443011cd08c05838698fa85dcc97479bded02238c385"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1453/magpie-cli-linux-amd64"
      sha256 "9bd9ffe21899eab27435b05a7daf7772c8b6067487fc6f11c5d3b2861d6bc97b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
