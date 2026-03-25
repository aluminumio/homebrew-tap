class Enbl < Formula
  desc "CLI for the Enable AI workforce platform"
  homepage "https://github.com/aluminumio/enable-cli"
  version "0.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/enable-cli/releases/download/v0.5.2/enbl-darwin-arm64"
      sha256 "78ad56958544a69951e896b223c39e7ca913338e15b9c04e7c070975f4bb13a9"

      def install
        bin.install "enbl-darwin-arm64" => "enbl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/enable-cli/releases/download/v0.5.2/enbl-linux-amd64"
      sha256 "e737ad0664a32a263c47b9dd63349e3c4e587b26367fe9345e3632b0c20e38ab"

      def install
        bin.install "enbl-linux-amd64" => "enbl"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/enbl --version")
  end
end
