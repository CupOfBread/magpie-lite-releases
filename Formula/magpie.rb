class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1538/magpie-cli-darwin-arm64"
      sha256 "20c12c9a83bc1f11d36a8c9d7cb8cc2f84b8fe53b91d08665c3e64c0d6976e71"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1538/magpie-cli-darwin-amd64"
      sha256 "8b2a835c5269a882d0a1d9377f1e0de103e013ed95e6827c582e3f539d0ef724"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1538/magpie-cli-linux-arm64"
      sha256 "9fd0e0818354473920d212dd2d1b1b8a0ca271f7e9f15ba384a992ba9d662de3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1538/magpie-cli-linux-amd64"
      sha256 "06b2a4d2ca8bbe0a58dcb599a0dfdc8f84631c9a57702536dff82178eaadd77c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
