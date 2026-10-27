class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1726/magpie-cli-darwin-arm64"
      sha256 "0d92be5aeb9e19fc1f6a14eeeb31543f9442d627f513f6b8fec07b68bb91058a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1726/magpie-cli-darwin-amd64"
      sha256 "61e3a10d16a5beb446376063842d9f74f5bd9d2e57da536bea40fc256b8f0c0e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1726/magpie-cli-linux-arm64"
      sha256 "fc8b6c4c31d89b560b3a4a61f85f771935a5cd48b5b7dc4d7cae3f7b8d4fa97d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1726/magpie-cli-linux-amd64"
      sha256 "17ed2b08841fa8aa36308f49f7d3a3854c647c89cf2e91ab0638e61ce93f9d0c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
