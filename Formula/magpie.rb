class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1345/magpie-cli-darwin-arm64"
      sha256 "09ad1b6489af5841adb2720f0d40129287e9dc112c70b4aa0cbbfebe3ef6a65c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1345/magpie-cli-darwin-amd64"
      sha256 "d5d0db53e6c44691dd6e96d227fb1ceff8609329f88d744320dbe967e0f55d3f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1345/magpie-cli-linux-arm64"
      sha256 "28442eecade016ce14e4d8b123b61b1eb696e32c6675f2ef40bb9c933f070c44"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1345/magpie-cli-linux-amd64"
      sha256 "23cd24f2f5f0b8448b061a0b285302f5c7345bd4cae8d036d85777973738355a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
