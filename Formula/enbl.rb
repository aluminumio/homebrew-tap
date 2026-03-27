class Enbl < Formula
  desc "CLI for the Enable AI workforce platform"
  homepage "https://github.com/aluminumio/enable-cli"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/enable-cli/releases/download/v0.6.0/enbl-darwin-arm64"
      sha256 "ae69871087af8779fe00e0a62596f8d7112eba1cbc9b8774fd561dfd084e5d22"

      def install
        bin.install "enbl-darwin-arm64" => "enbl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/enable-cli/releases/download/v0.6.0/enbl-linux-amd64"
      sha256 "934630bbdaf61f80177e8baecf8f5bf69102c528b791bfb7cd99b54ad0bd19d9"

      def install
        bin.install "enbl-linux-amd64" => "enbl"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/enbl --version")
  end
end
