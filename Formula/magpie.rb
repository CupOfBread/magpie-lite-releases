class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1823/magpie-cli-darwin-arm64"
      sha256 "149fb46f2150f430b8d6775fc9229bdca230d1225f990e200a85b7c50b49712f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1823/magpie-cli-darwin-amd64"
      sha256 "e4a3c729d03df980232176d209f7055948aa9bf0d72685b64a16fc7612ddab88"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1823/magpie-cli-linux-arm64"
      sha256 "d3d4ff139f77cf28c875f9cb901a5291ebe9ff92540ebcef2f56c079fa9f8c90"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1823/magpie-cli-linux-amd64"
      sha256 "3d97bdc33ac7f2a7ecf583cae64f4f52c0793e7a8721d78f93d4041bbaa50a16"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
