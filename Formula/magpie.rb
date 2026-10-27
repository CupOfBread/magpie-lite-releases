class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1755/magpie-cli-darwin-arm64"
      sha256 "71764d0471a4b79bb947bcc6ab9462e32cc2b682fe7a7d817fed3550ff5c0f91"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1755/magpie-cli-darwin-amd64"
      sha256 "aca57bf6d94655e4bcd9a68d85065de97c310eb04e56e23d8f14bd7612748ded"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1755/magpie-cli-linux-arm64"
      sha256 "4e3788203e8d09f1733c3e778be7f0c06b52a307ff3833361d3f2c0edfd8fe8c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1755/magpie-cli-linux-amd64"
      sha256 "5d6492dbe2f73cefc5c2dfc8e25b8c9c5ebcd5a32c32fa9d9ef1eaba23dd8523"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
