class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1402/magpie-cli-darwin-arm64"
      sha256 "394340a9c9d535349aff779062e9b7eff765d086fd95837098d28f5cb37c0922"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1402/magpie-cli-darwin-amd64"
      sha256 "873bb56d10fc80afd56370ed9a3e5e2bc1ebbe890df762f2ba2771b5f74a449d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1402/magpie-cli-linux-arm64"
      sha256 "b5595ca4d101e84c7c5fa9f1b1920aff1494772991eee761c3432645d4c23b00"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1402/magpie-cli-linux-amd64"
      sha256 "9e3af561684d3663ce2e9f5752c44179775d568465260ed25d367f29c34c928a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
