class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1728/magpie-cli-darwin-arm64"
      sha256 "ab26b8407baa926f146ce0bbc6bef29b6a6c11e9a742d2f3072fc8f95f7808f1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1728/magpie-cli-darwin-amd64"
      sha256 "6ca29f618096d6a63516ac2405a6ff28a9820baef3b4979ed7173f2edfa62814"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1728/magpie-cli-linux-arm64"
      sha256 "8987481bf945b8cff93960ab1b5013381fe34eb8190f266d722c4676f13f7974"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1728/magpie-cli-linux-amd64"
      sha256 "8d4c46b7abf7a09505d51984de5e3da1fa457fef3fa819e91b641ab82b90d16f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
