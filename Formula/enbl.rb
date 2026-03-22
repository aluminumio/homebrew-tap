class Enbl < Formula
  desc "CLI for the Enable AI workforce platform"
  homepage "https://github.com/aluminumio/enable-cli"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/enable-cli/releases/download/v0.3.1/enbl-darwin-arm64"
      sha256 "f0aa71ae8c93156cef3ffaf6bbb3a33cff8268acbd12b6e158c3b45c83c69ef9"

      def install
        bin.install "enbl-darwin-arm64" => "enbl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/enable-cli/releases/download/v0.3.1/enbl-linux-amd64"
      sha256 "8e42af3034f716e1cf9de4644cd5da7bd0148b571f7cf2e898fdaeeb8e60691d"

      def install
        bin.install "enbl-linux-amd64" => "enbl"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/enbl --version")
  end
end
