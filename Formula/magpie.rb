class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1436/magpie-cli-darwin-arm64"
      sha256 "194f74f96680289c29b97f9a3e92118b860c520a784ce83f9bf499bde9b65fe6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1436/magpie-cli-darwin-amd64"
      sha256 "8bdd7e9f6526091cfe4993a3d789b328aed9a5585b018e3e585badeb9fd4edf7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1436/magpie-cli-linux-arm64"
      sha256 "5f28f458a359ec419ef0010bdbe36811e5e861ea2f752a6332e4ebcdce635aa8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1436/magpie-cli-linux-amd64"
      sha256 "d07c32641da6319a1c7ec19dd3edf4c9e28a8e84841a0af57b606808c8c3539a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
