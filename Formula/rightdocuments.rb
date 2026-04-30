class Rightdocuments < Formula
  desc "CLI for the RightDocuments API"
  homepage "https://github.com/aluminumio/rightdocuments-cli"
  version "0.3.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.3.9/rightdocuments-darwin-arm64"
      sha256 "d26a89bce9aa3195b2be02f38b351fc53e15b35f01f74137e619b76c743a8b7a"

      def install
        bin.install "rightdocuments-darwin-arm64" => "rightdocuments"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.3.9/rightdocuments-linux-x86_64"
      sha256 "ece54360cfe64b7017b809edd62ddfdcf1a561dd9e19c784a42cbe0ae7400958"

      def install
        bin.install "rightdocuments-linux-x86_64" => "rightdocuments"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rightdocuments --version")
  end
end
