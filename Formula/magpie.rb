class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1737/magpie-cli-darwin-arm64"
      sha256 "516d662cec938379cc8788325e7e0ed1697dd9416ffd1a40ce161f6cc28ff2ce"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1737/magpie-cli-darwin-amd64"
      sha256 "884c65276effc817106b1271a33ce708a6555abd4150904c40c1879d010c8237"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1737/magpie-cli-linux-arm64"
      sha256 "c247f25eb7a8edf805b56edec5c9f8dfbfcae39adc677cfe829923f64c70b495"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1737/magpie-cli-linux-amd64"
      sha256 "ef971aff01978b14d92f0b158f9f4c57ad54d45aea1f26cc832cd2179b7ae625"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
