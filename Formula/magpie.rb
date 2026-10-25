class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1537/magpie-cli-darwin-arm64"
      sha256 "7a56499f84e8f34401a015d3047e6a695d1a2a91c402bbc56aec68d0809b30ba"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1537/magpie-cli-darwin-amd64"
      sha256 "1c98da3c966741d98a9f4599593b269a97afb9d064126faa8f06d10def21cce6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1537/magpie-cli-linux-arm64"
      sha256 "87e6ac418fef9aac7ce9300b547f10049d027c2143f201e9d2789a5bb6ad3de1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1537/magpie-cli-linux-amd64"
      sha256 "3462bd41c6aa2cf087de36940713a941444c4e1081e87815c9fc02a5c5e6bde6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
