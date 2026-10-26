class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1633/magpie-cli-darwin-arm64"
      sha256 "a9d905c48721933eba8d169c0ce8b92a548c35426be17b771013211980c159ab"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1633/magpie-cli-darwin-amd64"
      sha256 "bbbe2b50134aded26cc3a7bf7cf7ed16200f26d66ddc29aa2353ce74d55627bb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1633/magpie-cli-linux-arm64"
      sha256 "57b0012c71b7117eda368e4eb148041e4c7f9cadaca203bd0fe0011472757d0d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1633/magpie-cli-linux-amd64"
      sha256 "f6bcbfe3b4815294bf54294c91ac66b7a2e9369ace05e0c22d676d972b817c69"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
