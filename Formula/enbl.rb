class Enbl < Formula
  desc "CLI for the Enable AI workforce platform"
  homepage "https://enable.io"
  version "0.11.0"
  license "MIT"

  on_macos do
    # The macOS binary links /opt/homebrew/opt/openssl@3 dynamically.
    depends_on "openssl@3"

    on_arm do
      url "https://github.com/aluminumio/homebrew-tap/releases/download/enbl-v0.11.0/enbl-darwin-arm64"
      sha256 "05d9ae3d6238488eba46b21d1a17e18956dbd5f1ba87b865fa07c9559bf00811"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/homebrew-tap/releases/download/enbl-v0.11.0/enbl-linux-amd64"
      sha256 "6a4a6ab4152528f0905400096081019685a05d3cd8c35bcaaa7f0e29574b5efc"
    end
  end

  def install
    bin.install Dir["enbl-*"].first => "enbl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/enbl --version")
  end
end
