class Enbl < Formula
  desc "CLI for the Enable AI workforce platform"
  homepage "https://github.com/aluminumio/enable-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/enable-cli/releases/download/v0.2.0/enbl-darwin-arm64"
      sha256 "9225a55a54652405d8d0c33b8ecebc709bfd4ab66436fd301fe6a961d765c195"

      def install
        bin.install "enbl-darwin-arm64" => "enbl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/enable-cli/releases/download/v0.2.0/enbl-linux-amd64"
      sha256 "5194b7b3d9a64ddeae9190da7736c17b2bea29961dcba21d7f246fa960f41cc2"

      def install
        bin.install "enbl-linux-amd64" => "enbl"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/enbl --version")
  end
end
