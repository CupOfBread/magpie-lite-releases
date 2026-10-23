class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1329/magpie-cli-darwin-arm64"
      sha256 "0a07bc398539f1f1ffa571a3207f79bbcb8ce7f45ee34431cae56a187b51afc2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1329/magpie-cli-darwin-amd64"
      sha256 "dec509e66fc4ef53fa4206ae2485e4df59d20c6b1f5adafef7f60740cfefe955"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1329/magpie-cli-linux-arm64"
      sha256 "a5ffa18619efef1f48c965eea626949ff1a3770dce150e64221e113e4693d4b9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1329/magpie-cli-linux-amd64"
      sha256 "f24c5565aa91774d2c7a9771f5c0abdc7e199250f073ff2373c4a070176d840c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
