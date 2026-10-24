class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1457/magpie-cli-darwin-arm64"
      sha256 "0bf9563cd28fc1ea07b3b47f371d28532ef35ebf19c94723bd2de4c14263a7f0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1457/magpie-cli-darwin-amd64"
      sha256 "d226559defb07e91a9d6b523d1e2893b38a71083f813f81f1a3defcaab1706b4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1457/magpie-cli-linux-arm64"
      sha256 "cf2fab5fb248171bc6276e8a597dc14845506ecaab9864763411f1a578751be7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1457/magpie-cli-linux-amd64"
      sha256 "78c9cae612b4a1f8c6aa6a12b88c108b8acfbdfda9611b3aefa331751a021cba"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
