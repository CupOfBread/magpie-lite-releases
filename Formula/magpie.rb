class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1398/magpie-cli-darwin-arm64"
      sha256 "8297cddd51b9fa47b74eb7c82c943dbab110a1bb566d356c0588e29ecd4a1da3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1398/magpie-cli-darwin-amd64"
      sha256 "81752132b4493aa5624bfd30553d55e0c798b0ed0e1d0aa9246bda62d925ceb8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1398/magpie-cli-linux-arm64"
      sha256 "56d0e8bdc472b34bc20fab7bea9a6e5a0195f441db2d458e7794ed2938c80fff"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1398/magpie-cli-linux-amd64"
      sha256 "6cb124facfd5442cb637a7c7e188e48b06c0cfd0897fece0f4b6d1597326c147"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
