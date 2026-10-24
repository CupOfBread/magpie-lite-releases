class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1375/magpie-cli-darwin-arm64"
      sha256 "f718658fb0f80d22ce8814d872ac0c598b7126f6ddbdb9730fa9c2f9d37ef173"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1375/magpie-cli-darwin-amd64"
      sha256 "89b0515a105b0c4fb8b7072507d886046a08a343e0effb4552b74d475d8b56e5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1375/magpie-cli-linux-arm64"
      sha256 "6dd1f9104a3e8c43e4bf71809f7dc9fd4675bd671910c7710f5087655f2d6e05"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1375/magpie-cli-linux-amd64"
      sha256 "03960e827e490ba2a62f4bfcd6a7e2a0ac64dad5865d4f93b01a1835f9a5bf38"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
