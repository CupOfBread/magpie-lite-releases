class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1681/magpie-cli-darwin-arm64"
      sha256 "9a59a6330b2d233919558e7b98c3d32a4f8c91ef49ce279a42ade35e7afac1ca"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1681/magpie-cli-darwin-amd64"
      sha256 "ced0d095b542895056c2f3d7b4c342b917ef84cf1c6a29fd237c93dcc3e93fb1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1681/magpie-cli-linux-arm64"
      sha256 "37ccae8781f372ad0aab5a4dae0ada452d85031ce138e06c35430f7a11083a72"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1681/magpie-cli-linux-amd64"
      sha256 "f143022d9abf5fb05411f7e62130b6bb44fc19eddf20f42a39f3d6d5eeacfdac"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
