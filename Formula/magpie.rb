class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1621/magpie-cli-darwin-arm64"
      sha256 "81975c8afc6f1fb520c6eb376549f35e3e41905f8781ac96d09425abe168cdf8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1621/magpie-cli-darwin-amd64"
      sha256 "b7f06505aaab8664bda96fcd195031579f35657a80120055ca3cfc4213a5da71"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1621/magpie-cli-linux-arm64"
      sha256 "8bdbe6b8aa49dca33f4374036350ebba253eec679ae186c1832b6cc521dd3834"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1621/magpie-cli-linux-amd64"
      sha256 "37b4f40bdd7d5cd81d31dc8ae320d3fbbaf48cabcf21f8d1ca67574e7b2b740e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
