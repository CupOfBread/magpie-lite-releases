class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1383/magpie-cli-darwin-arm64"
      sha256 "336b8fa641ffb91c71ca9ae7d5d2821a188bf2e836c3ae1db5ed61f1ffb40c9f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1383/magpie-cli-darwin-amd64"
      sha256 "48968b251be101af89f42e18e554c968ad3f4facaceb84c29f7169db43bf3119"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1383/magpie-cli-linux-arm64"
      sha256 "a43f8d6babdbf43c9aba191526e1607dda9b6ea52785d660cfc1ff4b64d4eeaf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1383/magpie-cli-linux-amd64"
      sha256 "1293d75dfc44ace042160dcc58b64c031aac85df0c83ce4eabe8f956e9120eca"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
