class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1362/magpie-cli-darwin-arm64"
      sha256 "39c157b299656b7a174e7ae05eeab953a1110f11f99b53fc19362669c2a79843"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1362/magpie-cli-darwin-amd64"
      sha256 "7868bf3416fdeb7e71101f51292fcc8656d27b16d57c9b70f8ac58c6f343fce4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1362/magpie-cli-linux-arm64"
      sha256 "7e477944c7d77953a253fb63bf1ed2c9b6778324606b59be01dc81133a7da502"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1362/magpie-cli-linux-amd64"
      sha256 "c4467dad1d19fd0753ee12b6c194744d93de61a8b81346309bc1cc3975ba8d08"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
