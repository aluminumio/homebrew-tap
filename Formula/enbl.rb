class Enbl < Formula
  desc "CLI for the Enable AI workforce platform"
  homepage "https://github.com/aluminumio/enable-cli"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/enable-cli/releases/download/v0.3.0/enbl-darwin-arm64"
      sha256 "dce25dfe01d2085779621d8c4bf41cd8ffd1a2cae251a109a251bd2607c39280"

      def install
        bin.install "enbl-darwin-arm64" => "enbl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/enable-cli/releases/download/v0.3.0/enbl-linux-amd64"
      sha256 "0df76ab50ddc175b87a0132967171ba4c6696220aaa873cd9341b851dc833fdc"

      def install
        bin.install "enbl-linux-amd64" => "enbl"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/enbl --version")
  end
end
