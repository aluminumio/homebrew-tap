class Enbl < Formula
  desc "CLI for the Enable AI workforce platform"
  homepage "https://github.com/aluminumio/enable-cli"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/enable-cli/releases/download/v0.2.1/enbl-darwin-arm64"
      sha256 "67f3bef035ddfdfd85ccab2d5f87eba1c20008359d4babe5f51568ab8f25a886"

      def install
        bin.install "enbl-darwin-arm64" => "enbl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/enable-cli/releases/download/v0.2.1/enbl-linux-amd64"
      sha256 "29e89960db34f64a0165399ea0de9bdb510be7061a074d65949fc206ce7c18dc"

      def install
        bin.install "enbl-linux-amd64" => "enbl"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/enbl --version")
  end
end
