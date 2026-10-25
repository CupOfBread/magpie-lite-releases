class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1521/magpie-cli-darwin-arm64"
      sha256 "e3651cdd1fc1b72d3581c180bbfb4916e197fec979b1760f973ad411be27cdb3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1521/magpie-cli-darwin-amd64"
      sha256 "cfa0bc08a3f85fcfd87fbc34b304d9af86bc1e5574cb32df6dd78e9acddffbcc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1521/magpie-cli-linux-arm64"
      sha256 "6b14f531903909ce2e8b17b4b27d21036758b70491ac7b2a4c612113e25903a6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1521/magpie-cli-linux-amd64"
      sha256 "914b54c986e360f88adb6bb01eab41df3d594216915b8571d72fe15a70e7fc1b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
