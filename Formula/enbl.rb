class Enbl < Formula
  desc "CLI for the Enable AI workforce platform"
  homepage "https://github.com/aluminumio/enable-cli"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/enable-cli/releases/download/v0.10.0/enbl-darwin-arm64"
      sha256 "9e79cd96ab30389c4455b5f9d7b08e722881e17ea419a3ac5d1dd944e7794549"

      def install
        bin.install "enbl-darwin-arm64" => "enbl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/enable-cli/releases/download/v0.10.0/enbl-linux-amd64"
      sha256 "a9e2475995ba5f11c47f70a1cce5c80264025bf4295545d2160f7555a858cd37"

      def install
        bin.install "enbl-linux-amd64" => "enbl"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/enbl --version")
  end
end
