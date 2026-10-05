class Enbl < Formula
  desc "CLI for the Enable AI workforce platform"
  homepage "https://enable.io"
  version "0.11.1"
  license "MIT"

  on_macos do
    # The macOS binary links /opt/homebrew/opt/openssl@3 dynamically.
    depends_on "openssl@3"

    on_arm do
      url "https://github.com/aluminumio/homebrew-tap/releases/download/enbl-v0.11.1/enbl-darwin-arm64"
      sha256 "ac2c37709e9eb1c638818a5d1c7855004b90250fe062116027715ad585be4d7c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/homebrew-tap/releases/download/enbl-v0.11.1/enbl-linux-amd64"
      sha256 "fe774c1d66ca418edd1ef7a220b55b67ef001cb01ed691cadaf6ece555dd95b3"
    end
  end

  def install
    bin.install Dir["enbl-*"].first => "enbl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/enbl --version")
  end
end
