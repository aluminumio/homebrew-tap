class Rightdocuments < Formula
  desc "CLI for the RightDocuments API"
  homepage "https://github.com/aluminumio/rightdocuments-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.2.0/rightdocuments-darwin-arm64"
      sha256 "1b7c1ea698c1f70b5bea6ed2968b1b19a421d8ea7b7947d7137b399639ef55be"

      def install
        bin.install "rightdocuments-darwin-arm64" => "rightdocuments"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.2.0/rightdocuments-linux-x86_64"
      sha256 "db7286bea08fab5db89aa3552a7a6e622931407e0d85d66924bb8c3d75937e31"

      def install
        bin.install "rightdocuments-linux-x86_64" => "rightdocuments"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rightdocuments --version")
  end
end
