class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1305/magpie-cli-darwin-arm64"
      sha256 "7e193ddc81b61ff8aafb2c48645a02882930a95fb9da28a767d5c61248924920"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1305/magpie-cli-darwin-amd64"
      sha256 "e6d411443413173f3dd9054589b18a2ae69a71f97edf8b9987a7c24e00c65045"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1305/magpie-cli-linux-arm64"
      sha256 "b6e3cd019e7676bc08a928ab54b99d4c35845f41688d897f9e559fdf6aa5b6b4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1305/magpie-cli-linux-amd64"
      sha256 "85cd34a3cb59f844a5c638be62c8abd85cc4c3eea331e2b912ba9ff4fd8212fd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
