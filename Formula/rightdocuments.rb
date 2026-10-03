class Rightdocuments < Formula
  desc "CLI for the RightDocuments API"
  homepage "https://github.com/aluminumio/rightdocuments-cli"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.5.1/rightdocuments-darwin-arm64"
      sha256 "047535980c5a2af24b4ff9d72fe4d20f0b438ab5c9a308ac1f5eb2cf5df03f29"

      def install
        bin.install "rightdocuments-darwin-arm64" => "rightdocuments"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.5.1/rightdocuments-linux-x86_64"
      sha256 "d0220a82505f66ef0b315629bd705f5cf3ec1b884490a7324e26edb098e0900d"

      def install
        bin.install "rightdocuments-linux-x86_64" => "rightdocuments"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rightdocuments --version")
  end
end
