class Rightdocuments < Formula
  desc "CLI for the RightDocuments API"
  homepage "https://github.com/aluminumio/rightdocuments-cli"
  version "0.16.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.16.1/rightdocuments-darwin-arm64"
      sha256 "3580e8d355cef23d1b6b3c22ece11bfc9700390549a1cc220585f4c2a8834be4"

      def install
        bin.install "rightdocuments-darwin-arm64" => "rightdocuments"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.16.1/rightdocuments-linux-x86_64"
      sha256 "a2da5db557cca4d611b4b647663b00ad58bd7326b8483615467dd7ae7159ed9f"

      def install
        bin.install "rightdocuments-linux-x86_64" => "rightdocuments"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rightdocuments --version")
  end
end
