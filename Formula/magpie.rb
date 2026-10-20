class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1299/magpie-cli-darwin-arm64"
      sha256 "9cdbe12f17cd4769233e3c2f112fc84b1bf8086be770697e9c7eb3bc65c9de83"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1299/magpie-cli-darwin-amd64"
      sha256 "bbf58e9dbfbe439c84d1e6fdc722b30fc63187b94640811e17d28bb076ffe3ec"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1299/magpie-cli-linux-arm64"
      sha256 "8f7ce5f0aa095a0f58450a2a42eac15b03ad1f7eff383e53c3effc42dab7b60e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1299/magpie-cli-linux-amd64"
      sha256 "67c51884d97d7914ca938ca24bc2324c4532121ba13a26ea5c9b834b8e122063"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
