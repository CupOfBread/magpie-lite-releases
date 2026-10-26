class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1584/magpie-cli-darwin-arm64"
      sha256 "555bd3f6dbcc088a53311550fd83ec8d607edbded626b8e9874c613559953d5b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1584/magpie-cli-darwin-amd64"
      sha256 "f4f81e1a22b21d0e5ccef99ec7b83a62cd0f4c8d56211e9375ee38c43f226612"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1584/magpie-cli-linux-arm64"
      sha256 "59cecfc31dbbb2b7121efc2043a511e689cabf247af357bfc7e2aa2123cc495a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1584/magpie-cli-linux-amd64"
      sha256 "6380f6cd6ef5caa9979c96b93d34ff9409c6a23c4e461588783c5a15bb273377"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
