class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1594/magpie-cli-darwin-arm64"
      sha256 "6e74ae68c4ae02bdf41fd75535d714ce765669146669c3e2f71d7caa25915c8f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1594/magpie-cli-darwin-amd64"
      sha256 "4530f07524b9e81c0fb6903200df1115d994b7268a68360b3c041e15792d22ae"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1594/magpie-cli-linux-arm64"
      sha256 "c06e48d7514a7a8283bc5698009aafe671d3c8ed36faf35fba12455a84213bec"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1594/magpie-cli-linux-amd64"
      sha256 "85e550f826d712adb46d94adf26f2383638a689fc964c85f7cdb59896ad5392f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
