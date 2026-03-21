class Enable < Formula
  desc "CLI for the Enable AI workforce platform"
  homepage "https://github.com/aluminumio/enable-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/enable-cli/releases/download/v0.1.0/enable-darwin-arm64"
      sha256 "3349cbaceab32fdd2d84f80e5a9f66ecee1bceb8da1c0b0c850b1ea2433aac36"

      def install
        bin.install "enable-darwin-arm64" => "enable"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/enable-cli/releases/download/v0.1.0/enable-linux-amd64"
      sha256 "72956c9f122717150b25e6975823edd67219fa626ac73db588e3100b6985a698"

      def install
        bin.install "enable-linux-amd64" => "enable"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("enable --version")
  end
end
