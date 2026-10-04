class Rightdocuments < Formula
  desc "CLI for the RightDocuments API"
  homepage "https://github.com/aluminumio/rightdocuments-cli"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.13.0/rightdocuments-darwin-arm64"
      sha256 "c027e59a74525fa705036f6d90f75c4637882a3edb3644e60c97da2467541f08"

      def install
        bin.install "rightdocuments-darwin-arm64" => "rightdocuments"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.13.0/rightdocuments-linux-x86_64"
      sha256 "86a82e7dd09783c63ef6abf966b0b879335b6535e104693f75e4e62bea4e3caa"

      def install
        bin.install "rightdocuments-linux-x86_64" => "rightdocuments"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rightdocuments --version")
  end
end
