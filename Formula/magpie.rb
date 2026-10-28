class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1791/magpie-cli-darwin-arm64"
      sha256 "fff45b5d3c9703f8654444214f9950534c20bbaaea82319512b6f571e05b209e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1791/magpie-cli-darwin-amd64"
      sha256 "c66f338111d869cc0e4543fbef36af14dd07bffbcdfa65913b83c92bc3d0e5ec"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1791/magpie-cli-linux-arm64"
      sha256 "73637f960d1316e890169c8cf4408b7481e3392e7e5e0badc46e65f02dab71a0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1791/magpie-cli-linux-amd64"
      sha256 "2ba6002e5267ab449204d5e394a65fd2f9f76e92c452c90b422b39911d2e995f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
