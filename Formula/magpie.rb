class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1387/magpie-cli-darwin-arm64"
      sha256 "6b1456b905e490b8cb29cbe83ad49e1b81a897a43179e93ae401311f7d695f6d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1387/magpie-cli-darwin-amd64"
      sha256 "5a9c5937363cfca6822b84261e8ba1235740451faa9b48175307df3a9eddf8ef"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1387/magpie-cli-linux-arm64"
      sha256 "d6e8e0a5c31c41a41202991516af641c5036b819f188f409146dd5708f541d25"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1387/magpie-cli-linux-amd64"
      sha256 "54eb207141c5edbe2b02e48c7bb86fc455d5c4637f866740ea9c4c83c6af4e4e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
