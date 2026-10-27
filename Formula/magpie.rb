class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1754/magpie-cli-darwin-arm64"
      sha256 "51bd45ff9b71610ac4198aa14cfdafd605091751e49de8c3cf80da668961066e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1754/magpie-cli-darwin-amd64"
      sha256 "252ae4906dbed4ee6940f043616c5992bedbc0104e8ddcbfc5c976c3b8c58227"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1754/magpie-cli-linux-arm64"
      sha256 "c609554ea2cd09b6afab23776a2f5784c4a5a73ac8fdedeee2774f38278aa8bf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1754/magpie-cli-linux-amd64"
      sha256 "ab7c69fdb8068a9bd840a7a95174c0ea702a9b16dbd8ced2164e304df9b01938"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
