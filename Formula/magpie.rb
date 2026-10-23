class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1340/magpie-cli-darwin-arm64"
      sha256 "a04f8b6d9f91c09aa894d5ebbccbb273235b2838cbd0c108c06adcb69e160f7b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1340/magpie-cli-darwin-amd64"
      sha256 "2913f12a2d6a70116f55f07b9deb4220183cfbc2c7602881ccda1d01d59d15db"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1340/magpie-cli-linux-arm64"
      sha256 "3dc49a30d0b889022a4ea52bea37b624137e0f59b21a15a6a5baa99d18458bb6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1340/magpie-cli-linux-amd64"
      sha256 "46c42e1fbd891269557612968b159ac345f1171f1a1ff62ccc43d4cb59c92c35"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
