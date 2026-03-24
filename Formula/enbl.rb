class Enbl < Formula
  desc "CLI for the Enable AI workforce platform"
  homepage "https://github.com/aluminumio/enable-cli"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/enable-cli/releases/download/v0.5.0/enbl-darwin-arm64"
      sha256 "de4d891bb179ecca7e7cc04abc23dffa5aa41a3c3f72135925e0572ce1e6088f"

      def install
        bin.install "enbl-darwin-arm64" => "enbl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/enable-cli/releases/download/v0.5.0/enbl-linux-amd64"
      sha256 "864728964982f9198faf02a26db9fc6c52b9b2bee15cef7a500b967d5fdaf016"

      def install
        bin.install "enbl-linux-amd64" => "enbl"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/enbl --version")
  end
end
