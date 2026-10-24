class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1397/magpie-cli-darwin-arm64"
      sha256 "1b70cb26d2697f7e71f32d19843f1c7f9c65134d3013cbdb75981449fc14c0f5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1397/magpie-cli-darwin-amd64"
      sha256 "b10a22f1d7e770c7df012314239c3799933e5b955990031dbd5357d666ddee98"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1397/magpie-cli-linux-arm64"
      sha256 "b6881c92f39fb67197ceb9e44b13ab083728652e7a919a04894a8b94f6a49ab7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1397/magpie-cli-linux-amd64"
      sha256 "454a38440c505d9586f6bbc5d949b8eb2596d13ab36ef03fce885d15527d6de5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
