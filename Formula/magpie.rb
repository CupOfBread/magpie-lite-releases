class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1428/magpie-cli-darwin-arm64"
      sha256 "9a09648063074f50f1e7f41c8dcad604d33d6c6038baad5b7fda3741edbc6740"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1428/magpie-cli-darwin-amd64"
      sha256 "42476145a7cb1cde3be1619cffa822618b810b538e9bf1f71f07b44d4a1c4132"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1428/magpie-cli-linux-arm64"
      sha256 "c9795c29aa9b533bb791d99464d2435e0495d780dd965062ed44ec6816dbc4a5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1428/magpie-cli-linux-amd64"
      sha256 "a0d4b02617f6707e56e8f8e400a5659c419093d1755e31796002f6e789ea464e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
