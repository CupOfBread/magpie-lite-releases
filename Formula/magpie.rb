class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1330/magpie-cli-darwin-arm64"
      sha256 "6ab1c147cf083c84a510425e0b3e14ec276f05ae7b6b1de2ef6980448c8f4641"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1330/magpie-cli-darwin-amd64"
      sha256 "aad9440c6dc3a19cfaa19b518cff09937658fa5be4c07cc903da5509a55cdda1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1330/magpie-cli-linux-arm64"
      sha256 "ef8b0947b9b118e3cfcc3c37d1a1ace0de564acf74d332d8539de329bea75fa1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1330/magpie-cli-linux-amd64"
      sha256 "b48d27436973ab33e36e212a8e66076b0b3e78004ce44b8867a512366cc8afde"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
