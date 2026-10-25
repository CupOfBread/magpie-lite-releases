class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1539/magpie-cli-darwin-arm64"
      sha256 "aa272c8ddb1437b8d7441481d38480099f898429f08c88b1832f897476beb26b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1539/magpie-cli-darwin-amd64"
      sha256 "b3f4d55fd71da0388887c0c9fb5930e5f38852d75c390234a930e647650678dc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1539/magpie-cli-linux-arm64"
      sha256 "7cb0fc60deee05fc017c7e2eac496b9a63537903a0ad725a52f67b01e0a00b03"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1539/magpie-cli-linux-amd64"
      sha256 "0a5d91c04aa07b2500617c88650e2a5d853aa6a4b3e34e76d900f02cc618cc52"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
