class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1563/magpie-cli-darwin-arm64"
      sha256 "75fe9bde865c1958f5557e17beb49e6fc92fd3a134eead8af64351063dc99164"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1563/magpie-cli-darwin-amd64"
      sha256 "472b0aaf92df1083f2f9ac14d82d15bdadcaf3c48488c406d86d195903884f6c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1563/magpie-cli-linux-arm64"
      sha256 "120bf7d01da03417547afb27094301539392dc8bea423293827f7c32bc7e7981"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1563/magpie-cli-linux-amd64"
      sha256 "6d8f440cac21bce199043917aa9df8b168796250973c69b46d58b8708e146ec1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
