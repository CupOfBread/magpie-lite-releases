class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1343/magpie-cli-darwin-arm64"
      sha256 "46e333817d9a4eb035209a05bc2cd6d5ec6251bdf8edf03744b2f98e48fa99f9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1343/magpie-cli-darwin-amd64"
      sha256 "d6e56493b08fb04c9c71999f356e17451c28ab1c5c8d78fac7e625aceb14a2b2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1343/magpie-cli-linux-arm64"
      sha256 "a846e3e4abcc99aa1adf09f54907fc731e8c45ddd4129ccbe8e1312e1cee0e40"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1343/magpie-cli-linux-amd64"
      sha256 "03a71352b2390d66dfb53808d7c7c708556c65f238504c82e6df8acc0bb2bad2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
