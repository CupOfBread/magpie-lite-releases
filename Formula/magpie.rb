class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1676/magpie-cli-darwin-arm64"
      sha256 "22a9f76f1d58174893be1149db66681a0f3a30935148dfd066591de1b91e3052"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1676/magpie-cli-darwin-amd64"
      sha256 "9ff9e501d7383559d53178e4c31edafada55bb6353b807853bd930a9ca435108"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1676/magpie-cli-linux-arm64"
      sha256 "536f124f0aae21f3dd07a915d1d829b947b1692c201c10a093d546d6113ef24e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1676/magpie-cli-linux-amd64"
      sha256 "460cc9b54c7a2f282db7e865422dd77f34409bb5733d673a68c7ad3dced77164"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
