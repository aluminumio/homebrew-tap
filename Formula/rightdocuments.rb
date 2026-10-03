class Rightdocuments < Formula
  desc "CLI for the RightDocuments API"
  homepage "https://github.com/aluminumio/rightdocuments-cli"
  version "0.10.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.10.1/rightdocuments-darwin-arm64"
      sha256 "f289741d54a842aa85f4886f20d78bf6aa33dd60625baeef471ea59d40856260"

      def install
        bin.install "rightdocuments-darwin-arm64" => "rightdocuments"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.10.1/rightdocuments-linux-x86_64"
      sha256 "0a9d2736a48295ad03043b6d3086969dd1002bcd06190a92f120207d6fd4d92b"

      def install
        bin.install "rightdocuments-linux-x86_64" => "rightdocuments"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rightdocuments --version")
  end
end
