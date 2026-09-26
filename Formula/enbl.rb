class Enbl < Formula
  desc "CLI for the Enable AI workforce platform"
  homepage "https://github.com/aluminumio/enable-cli"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/enable-cli/releases/download/v0.7.0/enbl-darwin-arm64"
      sha256 "54dc8d62632a9c130a3c2a4449f2c3381a62ecc7d1dc702106e29494f1e11dc6"

      def install
        bin.install "enbl-darwin-arm64" => "enbl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/enable-cli/releases/download/v0.7.0/enbl-linux-amd64"
      sha256 "256a1a893aab0a5480063ebf3be9c3eaf43d03ab62372351420b70d179781acc"

      def install
        bin.install "enbl-linux-amd64" => "enbl"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/enbl --version")
  end
end
