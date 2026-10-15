class Rightdocuments < Formula
  desc "CLI for the RightDocuments API"
  homepage "https://github.com/aluminumio/rightdocuments-cli"
  version "0.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.16.0/rightdocuments-darwin-arm64"
      sha256 "0146d1a75d367b736f93f8902673510ef2859e4b7c05086d6d643ddb1c387875"

      def install
        bin.install "rightdocuments-darwin-arm64" => "rightdocuments"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.16.0/rightdocuments-linux-x86_64"
      sha256 "b32d90d13d0d19a8fb3939e3ab918915ea23c7fd310a12b19edaebb9eb6dbbc0"

      def install
        bin.install "rightdocuments-linux-x86_64" => "rightdocuments"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rightdocuments --version")
  end
end
