class Enbl < Formula
  desc "CLI for the Enable AI workforce platform"
  homepage "https://github.com/aluminumio/enable-cli"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/enable-cli/releases/download/v0.3.2/enbl-darwin-arm64"
      sha256 "07120943a8bbfe3519ea89c47efb4d0023fd5a02fd27fb11709bd03980c89405"

      def install
        bin.install "enbl-darwin-arm64" => "enbl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/enable-cli/releases/download/v0.3.2/enbl-linux-amd64"
      sha256 "9a97d127101d6ca4887a40a7504ea0641d1c7ef12c345b6a700825bf66a2564c"

      def install
        bin.install "enbl-linux-amd64" => "enbl"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/enbl --version")
  end
end
