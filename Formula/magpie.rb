class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1580/magpie-cli-darwin-arm64"
      sha256 "ce15550bf76f64589e5e70e255e643064beefbf82ec67df21df194490b3bfa73"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1580/magpie-cli-darwin-amd64"
      sha256 "3a1f56ad2eec900fef834c90a63bd8bf13546f5b29e129b2ebfaee6d0212c711"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1580/magpie-cli-linux-arm64"
      sha256 "e50cfc9c963960de82875641058303935d96fb0d2a820ae18522da774ae08955"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1580/magpie-cli-linux-amd64"
      sha256 "e2088c610aed25a44463c6f81b1fb3389ad8941c84615c8f3fb24b6b37fa155f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
