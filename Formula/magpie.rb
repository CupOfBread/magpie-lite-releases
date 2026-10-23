class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1354/magpie-cli-darwin-arm64"
      sha256 "f15fa52070dc82e246d8a42f0527965520b4c003c9d8eee8e7d9db2e5f9d94a8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1354/magpie-cli-darwin-amd64"
      sha256 "7ab3aa1a41aeefa14c4ea8191b1c55d9265a1d2b163b1d45c5a5f96560a8b8b7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1354/magpie-cli-linux-arm64"
      sha256 "cb9543a26789ac6c9505845550aa6fe2aa6255629856f8a96f261d00ac548f5b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1354/magpie-cli-linux-amd64"
      sha256 "0562efcdc43d3ed7218d7771246b91284d30e34952eca6807198ba97b2fa5b92"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
