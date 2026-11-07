class Rightdocuments < Formula
  desc "CLI for the RightDocuments API"
  homepage "https://github.com/aluminumio/rightdocuments-cli"
  version "0.17.0"
  license "MIT"

  on_macos do
    # Runtime libraries the macOS binary links (see otool -L in the CLI release job).
    depends_on "bdw-gc"
    depends_on "gmp"
    depends_on "openssl@4"
    depends_on "pcre2"

    on_arm do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.17.0/rightdocuments-darwin-arm64"
      sha256 "23e7cfc5d1211f4be2ae327252db64e2c0311b258f7476dc8930e99121226f9c"

      def install
        bin.install "rightdocuments-darwin-arm64" => "rightdocuments"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.17.0/rightdocuments-linux-x86_64"
      sha256 "b0ebafe4cfea2a6f83fddbc6167c0f9a7ab1926e3254df6db3606d37d92c5074"

      def install
        bin.install "rightdocuments-linux-x86_64" => "rightdocuments"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rightdocuments --version")
  end
end
