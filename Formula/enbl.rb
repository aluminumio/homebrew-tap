class Enbl < Formula
  desc "CLI for the Enable AI workforce platform"
  homepage "https://github.com/aluminumio/enable-cli"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/enable-cli/releases/download/v0.4.0/enbl-darwin-arm64"
      sha256 "7fe0a72272cfd2da17babca7ac571929872310cda02a7fed1f231de1a86b67e6"

      def install
        bin.install "enbl-darwin-arm64" => "enbl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/enable-cli/releases/download/v0.4.0/enbl-linux-amd64"
      sha256 "1c983cb5b9af991a3e6fa9a185903af8ff6ac0df5f1c491b3f3c8b41fc07b360"

      def install
        bin.install "enbl-linux-amd64" => "enbl"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/enbl --version")
  end
end
