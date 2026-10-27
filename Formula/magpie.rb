class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1783/magpie-cli-darwin-arm64"
      sha256 "840cee0aac6a1f5b4472fa789c3de0291745df0b3be3ed0a4f1067595e4bb4d2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1783/magpie-cli-darwin-amd64"
      sha256 "88c7e831aca9e4e68bf32d8c68aeb2c7ff4886580b330fbbc8747a24507b3a89"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1783/magpie-cli-linux-arm64"
      sha256 "cf8cb852fb98c22a34a711e450ec395a85db9f2b05e97508209bf1a5d8b76685"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1783/magpie-cli-linux-amd64"
      sha256 "99c46328636452e4a5d368016cec59eab138f00422b0c0aa4f2d3555a63e36f7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
