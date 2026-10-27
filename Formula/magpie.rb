class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1716/magpie-cli-darwin-arm64"
      sha256 "055358442d652831d4112f9591148f129981f57fafe50ae9683bc4077c8e692b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1716/magpie-cli-darwin-amd64"
      sha256 "66a9c7fed60eaa8447ab1db14abf709cf653308fa063f36d456fabf059764232"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1716/magpie-cli-linux-arm64"
      sha256 "c343dc67531cbad509aac6769a8bb60c8198e7001932c167d22b930b265434c1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1716/magpie-cli-linux-amd64"
      sha256 "5a1e930862e9c2eaee78c126956d69595bda308eb6e755d3e9e0cb9d097a5439"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
