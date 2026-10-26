class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1596/magpie-cli-darwin-arm64"
      sha256 "9717a58623fbd94561e905cf41bf9d33e89fa857cf452a03134ddbfca8381eec"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1596/magpie-cli-darwin-amd64"
      sha256 "1b4c7869f6962ecaa5280a43379147f03c7e7db6bc613afaedc22fd1ef1d5bca"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1596/magpie-cli-linux-arm64"
      sha256 "b2e87168c92c3d238bcde51b60f05dbc935c2ee80499db14676533ff6e2a9ad2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1596/magpie-cli-linux-amd64"
      sha256 "a61d375c7e387070ac7b2eca29d78c653fb27c836c8372ac391970274e36720c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
