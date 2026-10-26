class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1618/magpie-cli-darwin-arm64"
      sha256 "2c407e0c5228e8142b7251c4824e33d78d3cc920f0cb145402954a8bbaac79ce"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1618/magpie-cli-darwin-amd64"
      sha256 "67cc1fc139ab7c6b68ea79678ca75d3cadcd932921ddd73bacc3084f9b60d5b9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1618/magpie-cli-linux-arm64"
      sha256 "9c73c11b471b6a747040bec62f4a5977d51c47c6dfe00138c7fbd050b97fac7b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1618/magpie-cli-linux-amd64"
      sha256 "4ca441eceeaf3d3c5e8a7c099452a8c9b36d29618a67912972232ee035b376c4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
