class Enbl < Formula
  desc "CLI for the Enable AI workforce platform"
  homepage "https://github.com/aluminumio/enable-cli"
  version "0.5.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/enable-cli/releases/download/v0.5.3/enbl-darwin-arm64"
      sha256 "666f819664c05bb8af3c96bfefb41306bc17cbae975d85e054e4932bb22cc5bc"

      def install
        bin.install "enbl-darwin-arm64" => "enbl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/enable-cli/releases/download/v0.5.3/enbl-linux-amd64"
      sha256 "86f25c9a4e33be93e5cf65118699b59bc3912d6c0e1145fb9915172673297b9c"

      def install
        bin.install "enbl-linux-amd64" => "enbl"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/enbl --version")
  end
end
