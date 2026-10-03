class Rightdocuments < Formula
  desc "CLI for the RightDocuments API"
  homepage "https://github.com/aluminumio/rightdocuments-cli"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.6.0/rightdocuments-darwin-arm64"
      sha256 "8b634b8591e61f3deac4bd76248267d19c98d2b51d14b82c8e7f281a483690bf"

      def install
        bin.install "rightdocuments-darwin-arm64" => "rightdocuments"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.6.0/rightdocuments-linux-x86_64"
      sha256 "e4738f1fa0f9ca24dfa2be7dc7b95e372931a97b11f8e0e5f72087d40a0581ec"

      def install
        bin.install "rightdocuments-linux-x86_64" => "rightdocuments"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rightdocuments --version")
  end
end
