class Rightdocuments < Formula
  desc "CLI for the RightDocuments API"
  homepage "https://github.com/aluminumio/rightdocuments-cli"
  version "0.3.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.3.7/rightdocuments-darwin-arm64"
      sha256 "e27996f1c89e3ee5276d363c45fa84425cba02c2d4fa37545d6f4b8ebe8998b0"

      def install
        bin.install "rightdocuments-darwin-arm64" => "rightdocuments"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.3.7/rightdocuments-linux-x86_64"
      sha256 "4f281a2856f7e767f762b8c09aa83aac45352d6bd61820ebc4afff89e1251566"

      def install
        bin.install "rightdocuments-linux-x86_64" => "rightdocuments"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rightdocuments --version")
  end
end
