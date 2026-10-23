class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1351/magpie-cli-darwin-arm64"
      sha256 "c693d6fd34c57d7e7b85dda7ec8f8e712e3e27b8c1a22a93051795f9c04cb445"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1351/magpie-cli-darwin-amd64"
      sha256 "7c96f1fa0c36181d31eb6ae60fb2b63081b8cb707db37fc2e145875e02afa531"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1351/magpie-cli-linux-arm64"
      sha256 "701fa35253e47afb6a8867b36825cf5669b337cdd9342944bfab2d78cb888583"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1351/magpie-cli-linux-amd64"
      sha256 "56f14bb406de42861874005efaa433e570b061418e588d190239bd36e9742a22"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
