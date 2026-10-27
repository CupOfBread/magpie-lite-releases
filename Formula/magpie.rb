class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1669/magpie-cli-darwin-arm64"
      sha256 "ddc5b3e2e486ba1e6f0834977d59f57994e5a80c576115e2a47350d73bc43242"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1669/magpie-cli-darwin-amd64"
      sha256 "69422cf1f527f507439e4bda66bd115ce5ef1d2d17847da8d7430cde9d9e185f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1669/magpie-cli-linux-arm64"
      sha256 "2b0efdce45a21ce6867cbe952f1e941d11a0af99f4c6de7864dd2f5725291b51"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1669/magpie-cli-linux-amd64"
      sha256 "1b850e8d19377bafb977fb81978f1ebcb68f0e3493918a9c8d17645c1e9abf18"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
