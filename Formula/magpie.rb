class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1795/magpie-cli-darwin-arm64"
      sha256 "043f7964fefaa114a352081b3cfd2800b96ca02f7e9e47b5f0053abe49c0372c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1795/magpie-cli-darwin-amd64"
      sha256 "31d2694e76c3a2b7a465b08a69f03b8c0a4f1351199f85a1ce33703a395ee865"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1795/magpie-cli-linux-arm64"
      sha256 "0471bcee9e35151921b0b196c4c1a9a844ce8a7895ed49f70d9de5967ca4f5cd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1795/magpie-cli-linux-amd64"
      sha256 "41a2c4d65e41644f3a892329b535385f5768c64f92a451a9d67f5e1481d79b8c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
