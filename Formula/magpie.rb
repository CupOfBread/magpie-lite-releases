class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1597/magpie-cli-darwin-arm64"
      sha256 "1fc884b2c28a935d560de3e21275e2f73ae4ec6dfc2f2c24934a65d9af10ec52"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1597/magpie-cli-darwin-amd64"
      sha256 "28dffc9d7483e8ff7a1608db379db891f1bc51930b743fa312c78af925402588"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1597/magpie-cli-linux-arm64"
      sha256 "e74779d253ad1b6efcbdd9ac76af4446a434da95b736fb36e890983dfcbde61b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1597/magpie-cli-linux-amd64"
      sha256 "9f8717e24648064daecd413b762e6588eb6588c1152743ca74aba82ab24271b9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
