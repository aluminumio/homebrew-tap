class Rightdocuments < Formula
  desc "CLI for the RightDocuments API"
  homepage "https://github.com/aluminumio/rightdocuments-cli"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.14.0/rightdocuments-darwin-arm64"
      sha256 "a24593e28bb113ef2fe08a1164e2d701618453814f9665a985aa038501a1f69d"

      def install
        bin.install "rightdocuments-darwin-arm64" => "rightdocuments"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.14.0/rightdocuments-linux-x86_64"
      sha256 "72b5dfa43503780b838ec4e0ed58b3d2ba0f7b897f7b49bbc28355d8db9d1cfc"

      def install
        bin.install "rightdocuments-linux-x86_64" => "rightdocuments"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rightdocuments --version")
  end
end
