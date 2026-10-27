class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1777/magpie-cli-darwin-arm64"
      sha256 "4ab48514de1dd8f93ca1e543db275414a0f92cb4aae83e7bac8447bbf54281fd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1777/magpie-cli-darwin-amd64"
      sha256 "23e8e328d7444971369440ce8f3e0a0e555daae2b8a3eb3f184fcd95ad36a770"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1777/magpie-cli-linux-arm64"
      sha256 "bc73ee944adbd86d46a1ddbe9fea83dc88a8bf53d0509136c119ef6bdfdd3f59"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1777/magpie-cli-linux-amd64"
      sha256 "4c8f6641f4b042678943978a507b70e89a904bf212c002b2d5c65d2dd6014306"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
