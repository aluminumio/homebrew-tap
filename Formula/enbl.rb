class Enbl < Formula
  desc "CLI for the Enable AI workforce platform"
  homepage "https://github.com/aluminumio/enable-cli"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/enable-cli/releases/download/v0.5.1/enbl-darwin-arm64"
      sha256 "092033d13710c40af0a619166054216884b612ddd09b86c6abb1c0a249f9eb8a"

      def install
        bin.install "enbl-darwin-arm64" => "enbl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/enable-cli/releases/download/v0.5.1/enbl-linux-amd64"
      sha256 "b039d1efd3f95474b816f529a762e0b1eb885cc88b84a231238fd1580e8ae527"

      def install
        bin.install "enbl-linux-amd64" => "enbl"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/enbl --version")
  end
end
