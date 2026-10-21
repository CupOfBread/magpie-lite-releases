class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1315/magpie-cli-darwin-arm64"
      sha256 "ba3679538aadd5c8f01e5a4b2325a2d5afc8bc04361b8f8674feecfc96ad6d90"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1315/magpie-cli-darwin-amd64"
      sha256 "dbfae99dd2e6ca7de60987ff2e60f615c6aa1d66167f8135bbd936d764646a27"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1315/magpie-cli-linux-arm64"
      sha256 "e86c833e2473757f31a2baee8c9f205f4f418aaa001e75fa0254ef38de4cf09d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1315/magpie-cli-linux-amd64"
      sha256 "69a8b7b4b8159d7761bc86bae07ae3c56a08d69db7ac22696fb06cd5d410850e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
