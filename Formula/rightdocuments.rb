class Rightdocuments < Formula
  desc "CLI for the RightDocuments API"
  homepage "https://github.com/aluminumio/rightdocuments-cli"
  version "0.3.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.3.8/rightdocuments-darwin-arm64"
      sha256 "f5adfacf60ed7a85b34eb8696c493a7f1c38fb5810a70c66ca79eaa77031ec94"

      def install
        bin.install "rightdocuments-darwin-arm64" => "rightdocuments"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.3.8/rightdocuments-linux-x86_64"
      sha256 "37b9c0e17e932ecedfa098a15e4ef7dbea7020cb51ebe10ba7e5f3752fd09d0d"

      def install
        bin.install "rightdocuments-linux-x86_64" => "rightdocuments"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rightdocuments --version")
  end
end
