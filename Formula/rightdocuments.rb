class Rightdocuments < Formula
  desc "CLI for the RightDocuments API"
  homepage "https://github.com/aluminumio/rightdocuments-cli"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.7.0/rightdocuments-darwin-arm64"
      sha256 "77071c015291ae0b633d12deaf56366c960dc9bc3e2be38d58da74469abd8ddf"

      def install
        bin.install "rightdocuments-darwin-arm64" => "rightdocuments"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.7.0/rightdocuments-linux-x86_64"
      sha256 "9654cb3e2ce7f72b9b07dfada07c0dbd0a9735396eea8df71d66d4a4d3c0adfb"

      def install
        bin.install "rightdocuments-linux-x86_64" => "rightdocuments"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rightdocuments --version")
  end
end
