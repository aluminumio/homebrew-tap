class Rightdocuments < Formula
  desc "CLI for the RightDocuments API"
  homepage "https://github.com/aluminumio/rightdocuments-cli"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.2.2/rightdocuments-darwin-arm64"
      sha256 "7f7343f7f2e637425a9283323cd9382f4b7bc377e10a2dfe7e3a600dcb727af1"

      def install
        bin.install "rightdocuments-darwin-arm64" => "rightdocuments"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.2.2/rightdocuments-linux-x86_64"
      sha256 "fa45ab87ea76bc73e03ecd642bc77cdd0fdc3068a9b45ea05309613862f480e9"

      def install
        bin.install "rightdocuments-linux-x86_64" => "rightdocuments"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rightdocuments --version")
  end
end
