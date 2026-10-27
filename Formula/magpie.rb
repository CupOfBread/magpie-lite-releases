class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1668/magpie-cli-darwin-arm64"
      sha256 "272319005dd87a078f07300dd46e55f1dab815d2282849576bbcda5fa089c48a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1668/magpie-cli-darwin-amd64"
      sha256 "b9387bf9b7431947fb10c7dd4427296629c81893994d974dc10fb5e13d9c40ee"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1668/magpie-cli-linux-arm64"
      sha256 "a789ad3b91737b6cba0d7d70de0a72809437bc6a57e45551e6880b09456d78d9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1668/magpie-cli-linux-amd64"
      sha256 "bf78b2b9b2eab8189977967254cf559616e070cba4e4bcb7c9544ea23d86cf88"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
