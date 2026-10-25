class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1509/magpie-cli-darwin-arm64"
      sha256 "c1db8317101d6a876bf8a896f7214cc1919efe9bf5710803be9a80ced28f50e0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1509/magpie-cli-darwin-amd64"
      sha256 "cd5440c9e52c7d6259655676bc7eeaa97ff05553323eb0a9c082d3c94af6b8b0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1509/magpie-cli-linux-arm64"
      sha256 "dd291f9278f8b34855d8e6b2c62d774a13c5c7f2808a935ff83bc808e35f7245"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1509/magpie-cli-linux-amd64"
      sha256 "dc7ea8d2993c0de9f33f8009a2faa20a72756573f5f363a9924dac6114059442"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
