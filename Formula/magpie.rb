class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1390/magpie-cli-darwin-arm64"
      sha256 "f07bb2064db906984ee0cb2f79ac667b49c57a47447af0228e1294d5ede5415e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1390/magpie-cli-darwin-amd64"
      sha256 "451d0cf8dcc6c335fadf20d5fec76967612edc7a8aee573ddd16648bc535c63c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1390/magpie-cli-linux-arm64"
      sha256 "6de6b30cf633f292a90d1206b5ac518f827a6b56d54726c100e4d91f2a593bea"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1390/magpie-cli-linux-amd64"
      sha256 "c89a9948b84fbf183b422fd255d61e1829ce4b469bf4889e2bab5105bee3dd21"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
