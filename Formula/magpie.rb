class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1579/magpie-cli-darwin-arm64"
      sha256 "3b1c1e977040714d274b1e6affcfdca6958b586517898003b66de39c4cf0cefb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1579/magpie-cli-darwin-amd64"
      sha256 "5568d4a25df4ad6f45667e88ab7d7a2a1f77044ffc9f275dbba3a9008ecdb85f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1579/magpie-cli-linux-arm64"
      sha256 "eae75eccae4d7cbb6bea1d8f855e530fb496b3b2459755206aadd300045c5762"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1579/magpie-cli-linux-amd64"
      sha256 "5326d581e549291dba09a2820c18a7cfbfef9baf857ca459c5a0b5e18202807f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
