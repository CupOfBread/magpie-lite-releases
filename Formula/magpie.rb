class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1779/magpie-cli-darwin-arm64"
      sha256 "cee60a9bb35615c49dbebf5c63f4cf4b769ad5071339c8a3964727f7ac71f2d8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1779/magpie-cli-darwin-amd64"
      sha256 "4315674516cf88ba5a9a4e16ba8e6b45c43849b52e5bfdf5133b6f4ea64e74a4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1779/magpie-cli-linux-arm64"
      sha256 "4f2e738ec87460574a6ced60096628b71de16593d2627ce5cfa80d49df80667e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1779/magpie-cli-linux-amd64"
      sha256 "586e3f8369d1b3304de57867e47f8296335fbdef51e057fa2994e2569d7505ef"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
