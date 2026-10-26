class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1612/magpie-cli-darwin-arm64"
      sha256 "ae2e3ab01305e988c8b05e4fb62f4cbcd956616cdecb4c6a1b64ea9fc2d5b2c3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1612/magpie-cli-darwin-amd64"
      sha256 "fb84d726190373ff7bde4c055cde772c9973a7e6cc5dd543c663525c54b173a0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1612/magpie-cli-linux-arm64"
      sha256 "f90dd71ace2e1600bafcdb67dd938783fac9cb71d92ec1fd6140d8df7622bc5c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1612/magpie-cli-linux-amd64"
      sha256 "7f3d1f97cbed94bda291321a0cc3c0ff9cb08aa18d9870bfb24f154a23b4ea1c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
