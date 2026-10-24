class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1416/magpie-cli-darwin-arm64"
      sha256 "3a1cd4311972f957553e13d69e57402785ad81232d13ad1c388dcf6bbc51f90e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1416/magpie-cli-darwin-amd64"
      sha256 "2329ce1355a53e26ba52480bccf14bd0ca57c33ffb0d8c481f21464ae60e289e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1416/magpie-cli-linux-arm64"
      sha256 "7561b547c48ac6f9c257df95b243cc33cedaf45bf88fdc375b774001cfdfc377"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1416/magpie-cli-linux-amd64"
      sha256 "a74d2bacc3023a0ad18f9147257bae45115ed70984ba643e97f0942422680489"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
