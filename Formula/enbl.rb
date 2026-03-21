class Enbl < Formula
  desc "CLI for the Enable AI workforce platform"
  homepage "https://github.com/aluminumio/enable-cli"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/enable-cli/releases/download/v0.2.2/enbl-darwin-arm64"
      sha256 "f71fbc16ef55eaced656be443ecc61e5d1819d591ee89afcfcffc8709fffa71c"

      def install
        bin.install "enbl-darwin-arm64" => "enbl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/enable-cli/releases/download/v0.2.2/enbl-linux-amd64"
      sha256 "d3b673a623a4da6fe2e9db816d49f2332dff518661d2ea8d8bca518c0f1f5e13"

      def install
        bin.install "enbl-linux-amd64" => "enbl"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/enbl --version")
  end
end
