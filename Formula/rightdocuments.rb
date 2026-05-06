class Rightdocuments < Formula
  desc "CLI for the RightDocuments API"
  homepage "https://github.com/aluminumio/rightdocuments-cli"
  version "0.3.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.3.11/rightdocuments-darwin-arm64"
      sha256 "bf95c732b7accd131c077367427a1511c77b7f90c0936d9096e44e0b29b4730d"

      def install
        bin.install "rightdocuments-darwin-arm64" => "rightdocuments"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.3.11/rightdocuments-linux-x86_64"
      sha256 "f261e8c9f930a256c8f0dca7a8579274c7907aec791d5897a77269a1af6ff2c9"

      def install
        bin.install "rightdocuments-linux-x86_64" => "rightdocuments"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rightdocuments --version")
  end
end
