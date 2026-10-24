class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1404/magpie-cli-darwin-arm64"
      sha256 "f5c65f22f90cad6905486f6ae5d062705cc69d1fd3da3ab0e75853dd334691e8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1404/magpie-cli-darwin-amd64"
      sha256 "7e49da5181cfc6899b11d700c6ffaf988a7fd7d456b4ad24f4823451f46748e3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1404/magpie-cli-linux-arm64"
      sha256 "b127178f067968787a18d57908aef0a07218487ffab90fc8432a449f03d482f7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1404/magpie-cli-linux-amd64"
      sha256 "614af55d482331fe7b2a864572d12529a072354b19879b77628a82605b2066cf"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
