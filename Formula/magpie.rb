class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1659/magpie-cli-darwin-arm64"
      sha256 "190800b898512047ac84d414c7b541b1cfc42675d2e34aa8b4cdbe5866982fec"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1659/magpie-cli-darwin-amd64"
      sha256 "127136122c308d70ac806fb262ec3fec42b95775997a08a9a40c7d039af2617f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1659/magpie-cli-linux-arm64"
      sha256 "fcbe7fc624c41397883225c47bdbc6e8bbf284311aab8192ac89935a96deccdd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1659/magpie-cli-linux-amd64"
      sha256 "64b0f41ab32bace929a7eaf7a477c11077a498186c901b57a483a207f2d6309a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
