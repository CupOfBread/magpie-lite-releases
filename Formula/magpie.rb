class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1577/magpie-cli-darwin-arm64"
      sha256 "0747389bcf0da61d34279ec79ffd7eeedbdc69d6fc112c61bb746b9fe8622a86"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1577/magpie-cli-darwin-amd64"
      sha256 "db793ff0e6d03e91f0e60f0080d45af4b17551534e970dc83f243c75cc9c78ae"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1577/magpie-cli-linux-arm64"
      sha256 "ce6bb2169a7035f6331a902daba2508aa1675d0a632388841024bcd643196dd0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1577/magpie-cli-linux-amd64"
      sha256 "bc5ad043043d6fe98c9f240106a22a7547f272e1d8dc8281605ef02d4c2e018e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
