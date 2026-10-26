class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1608/magpie-cli-darwin-arm64"
      sha256 "5e248c7c15343fec0e6b2836ebe0007608ff7c274307871197e70872d3cded1e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1608/magpie-cli-darwin-amd64"
      sha256 "82d71ea6604308f47844b53ca7d03ed581769643e08946ebf9749f3b7f2759e0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1608/magpie-cli-linux-arm64"
      sha256 "5e7c8a560016a9c866f145d79e144706bcc589c1ab8b7a59bf290a09226d4882"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1608/magpie-cli-linux-amd64"
      sha256 "fdd824a13b6b5967964f34c7df6331fb5cc9b778db8183eb367f55a8f0adb16d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
