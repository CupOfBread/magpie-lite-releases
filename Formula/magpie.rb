class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1632/magpie-cli-darwin-arm64"
      sha256 "68387832e3f7a231f7678391ec85f94d745724090ece93e271da19cd2b59319b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1632/magpie-cli-darwin-amd64"
      sha256 "267ba644bd027f1343ece40d37747e640b38c45b8f14626ab7a510e524b5fdad"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1632/magpie-cli-linux-arm64"
      sha256 "684d8abd7a4b95b6c1321fb0aecc68299a7307383400c7037abe947f59f349af"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1632/magpie-cli-linux-amd64"
      sha256 "62f53b1045ed1f26eb58f1512baae7e31a013599fa9b806a2a128d2ace2ef7ee"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
