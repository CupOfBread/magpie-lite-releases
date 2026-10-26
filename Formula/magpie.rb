class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1624/magpie-cli-darwin-arm64"
      sha256 "7ef71a8860ca4547936fb34ec5b5fc4ce4156d56519a3aebffdc66dea29037a0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1624/magpie-cli-darwin-amd64"
      sha256 "dee98ad6638391bf46cee4a7464dffd950a9521264f8f5bbe0b384e262b9b7e3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1624/magpie-cli-linux-arm64"
      sha256 "216c74264b59131c2065ba6ec9e42b808c6f081bfcddc79c5468d764de97d78d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1624/magpie-cli-linux-amd64"
      sha256 "6375acbc9ce44d04713fe97acb28801122ece5ede061aa0bc1d9f560cf678735"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
