class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1368/magpie-cli-darwin-arm64"
      sha256 "01da57306ffc41a7a806bda70b72e404f1932f04da130486df9fbaa4ca4e6cf5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1368/magpie-cli-darwin-amd64"
      sha256 "d398657c3720c02e7ad87cd97e7d670e342bc65c04b9c9901aa6e5875971e1df"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1368/magpie-cli-linux-arm64"
      sha256 "87291b5645d9dcc0763fa6971c8a9357a9c16dcd2abd1b758186c04ba42d21b6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1368/magpie-cli-linux-amd64"
      sha256 "b89b71f852f1ace9f48d1c1ba95fe9666255086dc8d98f9309ed6697527877b9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
