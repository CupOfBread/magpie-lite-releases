class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1507/magpie-cli-darwin-arm64"
      sha256 "5ad0fef2e58cbfb197684398303ce3effe0aa6695456d6eb8a948cb0de571736"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1507/magpie-cli-darwin-amd64"
      sha256 "5b7b16dc7e061127736a3d91069c4f2bdea6e9dd38f24d562a6ecea8ef3ab730"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1507/magpie-cli-linux-arm64"
      sha256 "61d9174a98f444c7937d39919696e5006a7ea0e2f54f9bc6fb1645cebc6d3f33"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1507/magpie-cli-linux-amd64"
      sha256 "9bde1de1f9fa46229b0f85464424e82adecafb0c96cbc23aa6995cd1d3a89a5d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
