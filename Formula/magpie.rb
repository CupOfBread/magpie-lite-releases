class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1320/magpie-cli-darwin-arm64"
      sha256 "844055708bd2b5ce1e6f6846e8020d0e8b513cb14ff95d9dd46712659b0a1302"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1320/magpie-cli-darwin-amd64"
      sha256 "f29464f52fda2db41dfed5c4ef9ba65b3f4fefffd0f37af989d73c954f675827"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1320/magpie-cli-linux-arm64"
      sha256 "7780005acf61dea3ae060d79498d87a0c35675d31dd174d1bcec05341dfb9dce"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1320/magpie-cli-linux-amd64"
      sha256 "83b58bd053dd4397d8f991cb84b8f13a315d9399960841146f01dcd708bf1d21"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
