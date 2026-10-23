class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1336/magpie-cli-darwin-arm64"
      sha256 "17e685e48095bf03ba3950727e90693b05dc54fed54a9c64fab7f292607f7e23"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1336/magpie-cli-darwin-amd64"
      sha256 "9ec71ac02192d064c230df6d5d2656e2cb436103753c90c4efb9ba4e74843a02"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1336/magpie-cli-linux-arm64"
      sha256 "303bfc91dcf81a1d4be35289cae09b066719a872c63357b0c69040b3abd36b65"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1336/magpie-cli-linux-amd64"
      sha256 "85193b9e4d963a578bf1db48a0025298caa5cf5080b47b5642e3ebd6871c5a86"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
