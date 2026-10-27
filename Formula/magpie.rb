class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1721/magpie-cli-darwin-arm64"
      sha256 "ad053e4dbd1a0b804a341016cbe761fd295cc44d6c2d90ec70abe79ecec2750f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1721/magpie-cli-darwin-amd64"
      sha256 "4e4a3524791b06c065bd0ea5eb914c854e8bc7bc79c013e3cacfdeb265d2ee81"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1721/magpie-cli-linux-arm64"
      sha256 "21f9eca4892700b5fc62b09d9def674e65933d0e49d91402a706cdc3764dba46"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1721/magpie-cli-linux-amd64"
      sha256 "0546dbf584f493b04ebc83659aa948fd597278f8ef4b429a0629285d79943f80"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
