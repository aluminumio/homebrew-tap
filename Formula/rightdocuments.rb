class Rightdocuments < Formula
  desc "CLI for the RightDocuments API"
  homepage "https://github.com/aluminumio/rightdocuments-cli"
  version "0.16.3"
  license "MIT"

  on_macos do
    # Runtime libraries the macOS binary links (see otool -L in the CLI release job).
    depends_on "bdw-gc"
    depends_on "gmp"
    depends_on "openssl@4"
    depends_on "pcre2"

    on_arm do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.16.3/rightdocuments-darwin-arm64"
      sha256 "a0bbf28c486cbf4d13fa9f17102da78fef3ceafd00740803f7c5244f0d2c0d5e"

      def install
        bin.install "rightdocuments-darwin-arm64" => "rightdocuments"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.16.3/rightdocuments-linux-x86_64"
      sha256 "9acfc9c1cf5184354b0db73a17e0be49ddbff48e834b36e912174d7e2c5d458d"

      def install
        bin.install "rightdocuments-linux-x86_64" => "rightdocuments"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rightdocuments --version")
  end
end
