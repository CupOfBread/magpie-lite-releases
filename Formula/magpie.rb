class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1461/magpie-cli-darwin-arm64"
      sha256 "75e1bf90525ebf38274ac14f6e51495bda69bdaf5bb613d8f25c3d8ecadeea33"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1461/magpie-cli-darwin-amd64"
      sha256 "cf636d8f937eb46298535ecfeddbd23114919abb655c72f0f04e396a9f20055d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1461/magpie-cli-linux-arm64"
      sha256 "d11054fcdda63978b2f8cc6d7eef16bd538080343bb31943ec3dda1b8135e8e5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1461/magpie-cli-linux-amd64"
      sha256 "e559ce75b0d439f7c757863bd7b1425704b6eabdd70901540c1ed40fb1319f6e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
