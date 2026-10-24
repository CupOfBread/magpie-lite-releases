class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1438/magpie-cli-darwin-arm64"
      sha256 "79941b9fdf9192acd09cff16a66a318943b4a37fc6e743ac5622e078a3cdfd98"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1438/magpie-cli-darwin-amd64"
      sha256 "57a43dd530383772c82a01e8b8c0c25a4181ac2abe7bdbfea736104e0a01a33e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1438/magpie-cli-linux-arm64"
      sha256 "bf2832b02e821be5c48773eebc1cd1c68fa2d3053e8bd45fe9f5df9e0eaa4f1d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1438/magpie-cli-linux-amd64"
      sha256 "c4589f2bcd773aaa9f89ac5c27fb58793a66a9d22645aecad1ed783842c9ed00"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
