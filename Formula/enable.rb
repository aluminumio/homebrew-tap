class Enable < Formula
  desc "CLI for the Enable AI workforce platform"
  homepage "https://github.com/aluminumio/enable-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/enable-cli/releases/download/v0.1.0/enable-darwin-arm64"
      sha256 "placeholder"

      def install
        bin.install "enable-darwin-arm64" => "enable"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/enable-cli/releases/download/v0.1.0/enable-linux-amd64"
      sha256 "placeholder"

      def install
        bin.install "enable-linux-amd64" => "enable"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("enable --version")
  end
end
