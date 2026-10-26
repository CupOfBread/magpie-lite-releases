class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1640/magpie-cli-darwin-arm64"
      sha256 "f4f422882a7e710935941042c24328069fd05fd8fc7f9a5c9c23912188ab2773"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1640/magpie-cli-darwin-amd64"
      sha256 "2ffdc144ed51b6654bcf34d56a9c54a67157128ec82fa91ae6c0a2868a611763"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1640/magpie-cli-linux-arm64"
      sha256 "f187da01d11fd84a51bd840b26c0b99e1ed35f8dab708b606a8f4e192071bb28"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1640/magpie-cli-linux-amd64"
      sha256 "7c45d8473098b9c4446cf9197cb508b7b935ec66c322ed5b27d0dd4ce74f1dab"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
