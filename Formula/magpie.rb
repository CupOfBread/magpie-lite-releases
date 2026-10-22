class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1319/magpie-cli-darwin-arm64"
      sha256 "891e00b41248030ecdde6a2098b7cdb9b980c48460d1e0226716469f3092991a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1319/magpie-cli-darwin-amd64"
      sha256 "0abef7e9a16647675211fe621dbf0e9473e4f601d2fab8451d99558ab6eff55b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1319/magpie-cli-linux-arm64"
      sha256 "b3987f513db8b3b961c3b1a510caeadb317f5811b2339f0d1a9fc776a67c5e54"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1319/magpie-cli-linux-amd64"
      sha256 "a663805971fe788bc868d14aad2a4214bd928419a79ab9617ec899735fe8d152"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
