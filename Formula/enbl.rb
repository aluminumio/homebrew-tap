class Enbl < Formula
  desc "CLI for the Enable AI workforce platform"
  homepage "https://enable.io"
  version "0.10.2"
  license "MIT"

  on_macos do
    # The macOS binary links /opt/homebrew/opt/openssl@3 dynamically.
    depends_on "openssl@3"

    on_arm do
      url "https://github.com/aluminumio/homebrew-tap/releases/download/enbl-v0.10.2/enbl-darwin-arm64"
      sha256 "c59342aefd543d657f9a067c347462c26551c548161213ac9650d49dfa838191"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/homebrew-tap/releases/download/enbl-v0.10.2/enbl-linux-amd64"
      sha256 "f6089451f22f8a54c9f0abbe386baac717d3c91a6a48ceebe5e23bf188564bb6"
    end
  end

  def install
    bin.install Dir["enbl-*"].first => "enbl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/enbl --version")
  end
end
