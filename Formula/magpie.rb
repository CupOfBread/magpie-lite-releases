class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1641/magpie-cli-darwin-arm64"
      sha256 "1fc6e5878e9488253f0b6ede32df302be478d9996463e446ce7a52d04d02a342"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1641/magpie-cli-darwin-amd64"
      sha256 "72e5d5f493c5befad2dc3880247b5af17c6e4265a4c6c6f35975d33cad626bd5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1641/magpie-cli-linux-arm64"
      sha256 "c2d5e41126626a5535167ca3272356672c31b8e870456fb23641b04d92d7e0b6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1641/magpie-cli-linux-amd64"
      sha256 "73689b03e3be6b690615f68dd848e7038890aa406df7a2ba6310223119b5d5fd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
