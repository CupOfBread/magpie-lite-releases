class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1311/magpie-cli-darwin-arm64"
      sha256 "fa5eaffb817d1a7f0f3b686260e51d8142658518c51286ba5c9bde3a70b365d9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1311/magpie-cli-darwin-amd64"
      sha256 "38eca89890c464a175f0384f2e0977f3c6b7e1e4f3a5ef062af0de941a879906"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1311/magpie-cli-linux-arm64"
      sha256 "1bedb84ba85b81f90112efc29fb9ef30cac60742047604d2ff63873623dd1ecf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1311/magpie-cli-linux-amd64"
      sha256 "daf7e5e605ba559e996970eb39a06f091342292ddf3049ace3eda0c603f70bc1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
