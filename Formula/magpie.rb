class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1451/magpie-cli-darwin-arm64"
      sha256 "b2ba5a1ea8d7c00fe6f224cff531e1dfb9eaa15fba96246e2ae121c394e98699"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1451/magpie-cli-darwin-amd64"
      sha256 "7b856c2c14b6994d7940d5bd21ceb01b866976335fcd7e5ea83dbd11bc924d4f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1451/magpie-cli-linux-arm64"
      sha256 "ce06e536e097c4742b33fcc5907191f3fbf83bee7d2357e2998b8a62ee2500d2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1451/magpie-cli-linux-amd64"
      sha256 "5a5afaee63625eae6beb02d37e0cd1f93102dc115cf1e091bbf5cfe78d764f8f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
