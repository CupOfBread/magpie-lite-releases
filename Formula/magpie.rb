class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1514/magpie-cli-darwin-arm64"
      sha256 "24b55bcbafd8922c553a4415c8b2c6962dbabdef16b1d020149161e44957b200"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1514/magpie-cli-darwin-amd64"
      sha256 "667dfe6b4d98b91f34bdf2d447ce19f87ffcd3d0e9f676e93ac6691cbf917152"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1514/magpie-cli-linux-arm64"
      sha256 "5d6edd02cfe887d6325fa3ac01f5caf1f332e3eb68b9b455cd7a740880e2b33f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1514/magpie-cli-linux-amd64"
      sha256 "e5a2394a75a40ffdd5cfa49782ba32303b28ba31d0c8e8c4e8186c5721df39bf"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
