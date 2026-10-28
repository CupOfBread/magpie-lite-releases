class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1800/magpie-cli-darwin-arm64"
      sha256 "96443daa053348d738c4563e5dd3071e5064c030b96005a473cd950a914bb676"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1800/magpie-cli-darwin-amd64"
      sha256 "a5dc6e971e001544912030f98fcaec92b6c802940bc9f38167ebbb4ffbe65184"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1800/magpie-cli-linux-arm64"
      sha256 "07a744b018c9a56fba02c1e71cda512054bc47498a32c1d31172e721c2eae905"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1800/magpie-cli-linux-amd64"
      sha256 "9d7e88112d11c5c3be6f6a4816d4783159fb72a107a214ef76a36b34a0ce6731"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
