class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1352/magpie-cli-darwin-arm64"
      sha256 "bc586c9d5cafe4b5ad3b7a0869f937dedf0ca18fcc0fac7ddf15c594259b9f24"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1352/magpie-cli-darwin-amd64"
      sha256 "78f28ef926921b33a00a81ea0eef7e9e139fe6b2ef09aa4a73f4e4b11f2732fc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1352/magpie-cli-linux-arm64"
      sha256 "534e629e6b93c56ac709d2fb7ac8946c6cb3ad5d834705077ff74f68f19873dc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1352/magpie-cli-linux-amd64"
      sha256 "640fa019c5e5a262d127195673f1a58c4b58ed05ce9a9bed66f0f5803d9b2cd5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
