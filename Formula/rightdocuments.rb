class Rightdocuments < Formula
  desc "CLI for the RightDocuments API"
  homepage "https://github.com/aluminumio/rightdocuments-cli"
  version "0.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.15.0/rightdocuments-darwin-arm64"
      sha256 "b8a1c798bf3794d8bb5ebebf18d94a1a27aa14c29cc33b07f4d6021d6d2ade57"

      def install
        bin.install "rightdocuments-darwin-arm64" => "rightdocuments"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.15.0/rightdocuments-linux-x86_64"
      sha256 "0510e932a8985fdf657df6d8a98175ff8bb7997a347ae4a1bb9242496cde2aa7"

      def install
        bin.install "rightdocuments-linux-x86_64" => "rightdocuments"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rightdocuments --version")
  end
end
