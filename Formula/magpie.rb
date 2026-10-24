class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1403/magpie-cli-darwin-arm64"
      sha256 "0e6f27201ffbdca152d4458be8008557081a4617b9da22724b0560b41e4340d8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1403/magpie-cli-darwin-amd64"
      sha256 "6c54254522efba3f055c8ab77731476e94a832af1f4686a5775d95be16c4abb3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1403/magpie-cli-linux-arm64"
      sha256 "18f4a6905775f2bb63604ee969dd4b8dbd99fdaba38080a18d159722e87f65a8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1403/magpie-cli-linux-amd64"
      sha256 "a2e241f874c4480ae8634cf2ae82eca68f9a02ad2a38e4e438555ade73d630ac"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
