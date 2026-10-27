class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1725/magpie-cli-darwin-arm64"
      sha256 "6b4e8d3ac7b2dea58da2b4f7f9cb07693c5cdfc5bbf83e9cdd522d62b4d1d139"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1725/magpie-cli-darwin-amd64"
      sha256 "86970f7bf2103b2285207283f2260e9c78230060e2ce5c018f7a905ee0ed48ec"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1725/magpie-cli-linux-arm64"
      sha256 "27a2d5935b9ba4ee62ae873415920523b521a352de050649f72d9bef1fcd5948"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1725/magpie-cli-linux-amd64"
      sha256 "b46bd6a5ad472859facd6f0f903eb97538c35e9416eee6ba200a4d725c3b88ab"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
