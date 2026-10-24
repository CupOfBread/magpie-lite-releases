class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1468/magpie-cli-darwin-arm64"
      sha256 "087728e8677f8ab51ac1ef590729d439fe2fc0d5f255212c204ab29d66460bb3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1468/magpie-cli-darwin-amd64"
      sha256 "51b68d633a59ce317cc35f98ef1fc9ebded53e09af054ac542e803ddc5cc191c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1468/magpie-cli-linux-arm64"
      sha256 "b9fb801198376839f05285169c2ba4e4b7d8d4032f4b6d20483ed03e173cacbd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1468/magpie-cli-linux-amd64"
      sha256 "c065edf611c5bac6fd66f8851fec8ba17c5f40cce94bcaff5765bac3ffbbf2e7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
