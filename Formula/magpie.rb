class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1751/magpie-cli-darwin-arm64"
      sha256 "a729c2a883bb7d56829b66f81ca3f634f9160f791f784499bccb969c92662578"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1751/magpie-cli-darwin-amd64"
      sha256 "970472559b470ac3defe2bae3cb86d443fd3bcdae259b516c39279db749868a4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1751/magpie-cli-linux-arm64"
      sha256 "578a05c9020b5b3e1cbff9997485e051bf455c2fca46f14b4926888b7a2efcdb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1751/magpie-cli-linux-amd64"
      sha256 "a602f17ddb795c60169e1e6f941c4d14aab146aeda66f961a349e1dd999e60ba"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
