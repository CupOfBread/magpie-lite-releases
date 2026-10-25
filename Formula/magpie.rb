class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1535/magpie-cli-darwin-arm64"
      sha256 "05bd1e48b9ff4a8e92d84b60fd34bea4c82e9396e2ee275c1f7fc5fdfc50837b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1535/magpie-cli-darwin-amd64"
      sha256 "720d06ceb5aa0b6e579b350015e3c207901633273d452505c3c53693140f1f92"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1535/magpie-cli-linux-arm64"
      sha256 "33332e424786f65736afb10b97f1d85f7596313ac98439e907a3b3d503692365"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1535/magpie-cli-linux-amd64"
      sha256 "a2656daa1eaef153c2a38a7355b55ca7a61bfe8c1503c5720ff48bb6b4ee988b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
