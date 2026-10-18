class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1289/magpie-cli-darwin-arm64"
      sha256 "8eff6908534ed3e06a229fff821a9199d4d681ad7164f091c2df8ae8f1774933"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1289/magpie-cli-darwin-amd64"
      sha256 "6aa86e07bb8dc51679ccb70441a7130e7d5607a21c1244d490dd288118666182"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1289/magpie-cli-linux-arm64"
      sha256 "54de40930c7d44c04775b1415324aa902df5f7a953e95634edfe41eff5c277c7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1289/magpie-cli-linux-amd64"
      sha256 "8ad338eec0c43487c58afc7535dce7a9310975b870dbdb053f2a94a7772e8ea6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
