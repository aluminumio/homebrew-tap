class Rightdocuments < Formula
  desc "CLI for the RightDocuments API"
  homepage "https://github.com/aluminumio/rightdocuments-cli"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.3.3/rightdocuments-darwin-arm64"
      sha256 "d856ed1fa1d4b7281ce9bec129d39c7cca88533175d45d9bea7731706f68e317"

      def install
        bin.install "rightdocuments-darwin-arm64" => "rightdocuments"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.3.3/rightdocuments-linux-x86_64"
      sha256 "6e1e230754f62ae38ae775a73b2c5759087b34fd7082e04e072be8e89e081b99"

      def install
        bin.install "rightdocuments-linux-x86_64" => "rightdocuments"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rightdocuments --version")
  end
end
