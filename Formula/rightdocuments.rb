class Rightdocuments < Formula
  desc "CLI for the RightDocuments API"
  homepage "https://github.com/aluminumio/rightdocuments-cli"
  version "0.3.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.3.4/rightdocuments-darwin-arm64"
      sha256 "d902e0ba92b6009e327402923a7964ecc1a7dba3526bf6ad02f5e3df491e79a7"

      def install
        bin.install "rightdocuments-darwin-arm64" => "rightdocuments"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.3.4/rightdocuments-linux-x86_64"
      sha256 "0c09a50fd2db890d10f856f400af7d10e201c9703a2330bcef9cd272320f9e3a"

      def install
        bin.install "rightdocuments-linux-x86_64" => "rightdocuments"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rightdocuments --version")
  end
end
