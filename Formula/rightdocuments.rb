class Rightdocuments < Formula
  desc "CLI for the RightDocuments API"
  homepage "https://github.com/aluminumio/rightdocuments-cli"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.2.1/rightdocuments-darwin-arm64"
      sha256 "aa366a7f474fa79c931eabfeb93ce7c91d68d98efc40cdd1eed50ebf6bb98bb5"

      def install
        bin.install "rightdocuments-darwin-arm64" => "rightdocuments"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.2.1/rightdocuments-linux-x86_64"
      sha256 "439434045cd236311e0cd9fb043e12e0bf25817678a226f502b4f69f2a11ec53"

      def install
        bin.install "rightdocuments-linux-x86_64" => "rightdocuments"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rightdocuments --version")
  end
end
