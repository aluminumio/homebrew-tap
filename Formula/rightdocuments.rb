class Rightdocuments < Formula
  desc "CLI for the RightDocuments API"
  homepage "https://github.com/aluminumio/rightdocuments-cli"
  version "0.13.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.13.1/rightdocuments-darwin-arm64"
      sha256 "50bd6666a7771869c9243ba29c9496ca9e10d8e2f7aca45ac999b23625c9774d"

      def install
        bin.install "rightdocuments-darwin-arm64" => "rightdocuments"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.13.1/rightdocuments-linux-x86_64"
      sha256 "b0be2e8fedbf176d4fa020a51dc6b19d4d33a9d0d660e41b491580531e489057"

      def install
        bin.install "rightdocuments-linux-x86_64" => "rightdocuments"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rightdocuments --version")
  end
end
