class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1787/magpie-cli-darwin-arm64"
      sha256 "4ee473f9c9e84145688976253d6982407df747ab3191a0c955ea9d0e0aa6a224"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1787/magpie-cli-darwin-amd64"
      sha256 "37bc86df7436eff8671e2d4e39e3916fb53876c21712d8dea6497841f77354cc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1787/magpie-cli-linux-arm64"
      sha256 "73e4a8a55b93d2568845df907964daaee6bf766cb6ae17e9f6801b93d568c1a0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1787/magpie-cli-linux-amd64"
      sha256 "375a525bd8c0c1c8fee63c97208cb6127869c00dccc014b144ed0ff3093e25ee"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
