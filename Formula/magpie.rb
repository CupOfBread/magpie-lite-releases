class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1712/magpie-cli-darwin-arm64"
      sha256 "833fbd54568a9872487f131cb82896da0b73a09389fb3bf034ec0e219ba31cd1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1712/magpie-cli-darwin-amd64"
      sha256 "1a25b7479a5dec98c4c64f220c709cb12e46dd3a41f315602fe6aefc4607f96d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1712/magpie-cli-linux-arm64"
      sha256 "a240c4348d3940c018281de7f85631d3d0755d4dff4237884cb9bf5c65d4aa1d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1712/magpie-cli-linux-amd64"
      sha256 "d9d9bda2a639b4f158299cc8552042a34bef47b3e39c228b6046c3ef6101a305"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
