class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1683/magpie-cli-darwin-arm64"
      sha256 "bf617bf24c97405b81e48972e1547305c2b45451bbdb2a67924566f80860a3cd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1683/magpie-cli-darwin-amd64"
      sha256 "25744de25c97cb55403b1cef49ce0f5827a59d8f397d70f39ca06bfe5609eeb7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1683/magpie-cli-linux-arm64"
      sha256 "3add067f11ababeb15166a71d614d646a57bf000effe690adfa380105d5538cc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1683/magpie-cli-linux-amd64"
      sha256 "8e9a4c5bbb06c9072fe24a2fddad65473f2d810524e753a9433cfaae6679842a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
