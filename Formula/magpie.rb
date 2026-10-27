class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1707/magpie-cli-darwin-arm64"
      sha256 "14aac1cbde825e6e83e95337adfa650257fcef588ce5497cdd3535ac6c7197b5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1707/magpie-cli-darwin-amd64"
      sha256 "42f3dc23da37a015711982729566512fcbb5ec0a26d93cb690c0ed1c0be381cd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1707/magpie-cli-linux-arm64"
      sha256 "c9cd7983170a5dbc2ab763c874fb4a174a606c6519941ee4aace94bf3d2a94da"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1707/magpie-cli-linux-amd64"
      sha256 "b3a72bcd127fc29bcd9942d27c911ccdf74e91716825dfa0cc474d195296f5f0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
