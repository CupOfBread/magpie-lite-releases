class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1724/magpie-cli-darwin-arm64"
      sha256 "5c1955414f61bb1f2609a4a738c56347c1f8089422170b45cd409161f6b8b6d0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1724/magpie-cli-darwin-amd64"
      sha256 "c192e13de43fd0c9b55192a01b3f252d9f3e94c93093c886c2a6eeb82a8c740d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1724/magpie-cli-linux-arm64"
      sha256 "946385742dcd65bfef75a811219af4332001c3535aca38f28ee0f09de88189bb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1724/magpie-cli-linux-amd64"
      sha256 "72971eea0fa8b158151962208ea15aa69f2ab3fc41effdc655f1591f3811a7a3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
