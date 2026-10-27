class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1773/magpie-cli-darwin-arm64"
      sha256 "d779fcbaee18ce4d264fe8c777c0b5914d803e08ab3709a8af4483ffdafdfc5a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1773/magpie-cli-darwin-amd64"
      sha256 "403ddc8985cffb934fa3194679438b5a72d6f79f67aaabfd0e1dd05a292454ea"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1773/magpie-cli-linux-arm64"
      sha256 "a18c776ac73621a99e14bc30b3946d74586aca5caa7516ceaa8ad398ddbc9e33"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1773/magpie-cli-linux-amd64"
      sha256 "e84b7c5c5775c9d98b047bbaec7ffee256c9f5f80c91e271a573c4a869077b6d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
