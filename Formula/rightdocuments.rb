class Rightdocuments < Formula
  desc "CLI for the RightDocuments API"
  homepage "https://github.com/aluminumio/rightdocuments-cli"
  version "0.3.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.3.6/rightdocuments-darwin-arm64"
      sha256 "d4b25192cde3734f590d0054c300cc7108eaa0abbeb6dda7e004ea1eceb4ca9f"

      def install
        bin.install "rightdocuments-darwin-arm64" => "rightdocuments"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.3.6/rightdocuments-linux-x86_64"
      sha256 "864b06f8aa2f1e2b42a604ea28e8dbd53f651adf1ecc0c0f19e335e4e54e1519"

      def install
        bin.install "rightdocuments-linux-x86_64" => "rightdocuments"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rightdocuments --version")
  end
end
