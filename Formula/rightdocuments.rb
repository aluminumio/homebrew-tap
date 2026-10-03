class Rightdocuments < Formula
  desc "CLI for the RightDocuments API"
  homepage "https://github.com/aluminumio/rightdocuments-cli"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.8.0/rightdocuments-darwin-arm64"
      sha256 "6b346e00cf70814c12373fc9c72783017a0ab004aaae44282cdba8e8b91ee496"

      def install
        bin.install "rightdocuments-darwin-arm64" => "rightdocuments"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.8.0/rightdocuments-linux-x86_64"
      sha256 "d252859903b8bb9d0317612f67aa9cc7061e36bb009da2cddd5695d754f01f1a"

      def install
        bin.install "rightdocuments-linux-x86_64" => "rightdocuments"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rightdocuments --version")
  end
end
