class Rightdocuments < Formula
  desc "CLI for the RightDocuments API"
  homepage "https://github.com/aluminumio/rightdocuments-cli"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.12.0/rightdocuments-darwin-arm64"
      sha256 "d682184f894d37d27ee8e29b19d2055fc73d4e72288b53f167d94a3de0f691e8"

      def install
        bin.install "rightdocuments-darwin-arm64" => "rightdocuments"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.12.0/rightdocuments-linux-x86_64"
      sha256 "785b39e9537c46d88b85bf423e3ccc2c06346078b4ee420a918c7d29ab25e8de"

      def install
        bin.install "rightdocuments-linux-x86_64" => "rightdocuments"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rightdocuments --version")
  end
end
