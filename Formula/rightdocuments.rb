class Rightdocuments < Formula
  desc "CLI for the RightDocuments API"
  homepage "https://github.com/aluminumio/rightdocuments-cli"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.10.0/rightdocuments-darwin-arm64"
      sha256 "cb69b0e5a10c542467340cdcd16e83c019a3d021447f81fb56eda3dac9f8a460"

      def install
        bin.install "rightdocuments-darwin-arm64" => "rightdocuments"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.10.0/rightdocuments-linux-x86_64"
      sha256 "f1479ad9b3df318b68c6a02af98ffbb644ba63427c63bb71fab8f5d001480dc0"

      def install
        bin.install "rightdocuments-linux-x86_64" => "rightdocuments"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rightdocuments --version")
  end
end
