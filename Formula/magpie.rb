class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1748/magpie-cli-darwin-arm64"
      sha256 "6e625a5adfa4ef2be3fdb6be771c1d07416230e91d8d8743d080429a027bf8bf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1748/magpie-cli-darwin-amd64"
      sha256 "c75a045413127ecc2e540fe3bbca20bf6e6cd5a736d21c260ca646a313be0df1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1748/magpie-cli-linux-arm64"
      sha256 "95d26840721aa4f74eb2ce536c405aa882e85ddd54079fa73ccd52464e8416ce"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1748/magpie-cli-linux-amd64"
      sha256 "8005dcb31880ff9b6652b70326de0cec6dc1fbd350bf21ca73b3c30f57f53a6c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
