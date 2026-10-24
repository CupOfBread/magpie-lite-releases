class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1452/magpie-cli-darwin-arm64"
      sha256 "13a8aa02ce61f56661aadda00c7fb8ab407f0183b42a1c0d8880717bfbe1319d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1452/magpie-cli-darwin-amd64"
      sha256 "46e169626fd6f6c4e83a94e4afc830338455e670d82d58e20e5f143b0d0b880f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1452/magpie-cli-linux-arm64"
      sha256 "5efdf2ded64dde179e6d774acebd4c5dfa6b41f77ac5a4993976efd7f71ac680"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1452/magpie-cli-linux-amd64"
      sha256 "33292837c922b615e08bff09511bdf857689752f3afe4b87d922172f92968190"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
