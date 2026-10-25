class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1525/magpie-cli-darwin-arm64"
      sha256 "24abe4cac18fcc5090a0837961dda3ecb3eeb0db2a65c95b4460dac959989884"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1525/magpie-cli-darwin-amd64"
      sha256 "96c378a20f60dea15e6023eb7bfab910e1374d156476dca277f9fc5b5dacf60c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1525/magpie-cli-linux-arm64"
      sha256 "a047f8499e13f5d0bafd75e754a014312b9f6e66d4a0af271d274f8def7276d4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1525/magpie-cli-linux-amd64"
      sha256 "b6cebc042be92deedd9ff97c71cfd1634d0207c7b5edfa54462d90abdeaa609f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
