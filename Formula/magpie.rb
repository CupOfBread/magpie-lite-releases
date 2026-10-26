class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1611/magpie-cli-darwin-arm64"
      sha256 "7d53de971672d7e4db0dc428033bb6460d8d6c2a1f56b5195e7118fa4f8081cf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1611/magpie-cli-darwin-amd64"
      sha256 "9e5bbcc3358077b5a357d5a0a52fb14a7ac736ab0d47136ebefe3d10f3406052"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1611/magpie-cli-linux-arm64"
      sha256 "3631167b0d27deedae60b62d55c10ea11a253f4a2473e1ae6b6feee80cf08cf6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1611/magpie-cli-linux-amd64"
      sha256 "b9ae0fd40ee8d1649f8669641ceb936ebed78215fba17a3c7b2b7a283b23ced3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
