class Enbl < Formula
  desc "CLI for the Enable AI workforce platform"
  homepage "https://github.com/aluminumio/enable-cli"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/enable-cli/releases/download/v0.9.0/enbl-darwin-arm64"
      sha256 "439c87e3de9ccb30bcaf2d55254a1be0ca605a3eec5e25bc6b1aed983858c2a3"

      def install
        bin.install "enbl-darwin-arm64" => "enbl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/enable-cli/releases/download/v0.9.0/enbl-linux-amd64"
      sha256 "bd8cb18c4184dbcba17a0a4289582f4faee7d9698ae96be068f5a5fc49b6edc6"

      def install
        bin.install "enbl-linux-amd64" => "enbl"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/enbl --version")
  end
end
