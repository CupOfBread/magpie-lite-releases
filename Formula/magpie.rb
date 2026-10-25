class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1496/magpie-cli-darwin-arm64"
      sha256 "af7c9b08035e42aef0d5079eb55755c7c030c2262cfee6dedbdabf0fa0213ca9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1496/magpie-cli-darwin-amd64"
      sha256 "e53cf2a0a9743aa7b615ed4e8f1b914aed4374e3d11032eea24d6b553a609e45"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1496/magpie-cli-linux-arm64"
      sha256 "02520c65fe8ca134607a626f9ccdc9cc52f55d621e3c85972707fb672a19d5f7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1496/magpie-cli-linux-amd64"
      sha256 "7db8b3553067ce1d3358abf15c156541109da3a5e3d56914d44329767d4b3604"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
