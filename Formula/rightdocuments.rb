class Rightdocuments < Formula
  desc "CLI for the RightDocuments API"
  homepage "https://github.com/aluminumio/rightdocuments-cli"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.9.0/rightdocuments-darwin-arm64"
      sha256 "d89df77f293fc18f7d7d112a29d1ac0931ac9dc4c1707ed85f672df531e51105"

      def install
        bin.install "rightdocuments-darwin-arm64" => "rightdocuments"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.9.0/rightdocuments-linux-x86_64"
      sha256 "634b5b0825ef480f82e88987869ced16368fdcca2a70d8c480370d392de0c92a"

      def install
        bin.install "rightdocuments-linux-x86_64" => "rightdocuments"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rightdocuments --version")
  end
end
