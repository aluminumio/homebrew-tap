class Enbl < Formula
  desc "CLI for the Enable AI workforce platform"
  homepage "https://github.com/aluminumio/enable-cli"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/enable-cli/releases/download/v0.8.0/enbl-darwin-arm64"
      sha256 "979391f02d3a5cc92a7062e66c9001387c1672812799ce5f61d3cf6d4fa8c26c"

      def install
        bin.install "enbl-darwin-arm64" => "enbl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/enable-cli/releases/download/v0.8.0/enbl-linux-amd64"
      sha256 "2429b2d57a593ba422e51f2c4f3ad44e74e4759664cd7c555292f700c9ce306e"

      def install
        bin.install "enbl-linux-amd64" => "enbl"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/enbl --version")
  end
end
