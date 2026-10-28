class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1819/magpie-cli-darwin-arm64"
      sha256 "dc8f349cfce961861cb43becc623dadc6e18f8561503f9587ff46f477733ca93"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1819/magpie-cli-darwin-amd64"
      sha256 "866fc5780585d6aebf96a499f93ac4cc405d7f7824b727af8ded2aa1c1209bbf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1819/magpie-cli-linux-arm64"
      sha256 "21c23c186fdf9ae0d1e7ee9e005139107e220145a9ce6fb53f9bd936235804e6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1819/magpie-cli-linux-amd64"
      sha256 "d936ad3ca2f3a8b4dcbc0bb1bcb03e186f4b6f6f23d071222b60f2451d2886ff"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
