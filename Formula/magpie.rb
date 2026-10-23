class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1339/magpie-cli-darwin-arm64"
      sha256 "4a8c3e4931012e8d3606723ed67e0ace88ad0c2ac5a15843592a113acccd3baa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1339/magpie-cli-darwin-amd64"
      sha256 "d8e39f77f7e00ef2c62bbdd510cbd47459052b97d9eb7b1bc0ec91717479d139"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1339/magpie-cli-linux-arm64"
      sha256 "79c4c52a1af5adef1c47ab92df1fde9620c53d680b5523034bccec323b481851"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1339/magpie-cli-linux-amd64"
      sha256 "d9f19ffc5fe60a6f40e14c6a03dd72695b2684da5d5084cbfe12051698bfb683"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
