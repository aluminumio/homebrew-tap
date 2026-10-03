class Rightdocuments < Formula
  desc "CLI for the RightDocuments API"
  homepage "https://github.com/aluminumio/rightdocuments-cli"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.11.0/rightdocuments-darwin-arm64"
      sha256 "4b0dc0a40e1b75ce6e79f1fe5586473d201b80ab2dfaf5e9faeb4e9a180275d0"

      def install
        bin.install "rightdocuments-darwin-arm64" => "rightdocuments"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.11.0/rightdocuments-linux-x86_64"
      sha256 "2ad53be98384ce2c81f3a4cd7a525fa15726628f37edad6cbb4603da6c4272eb"

      def install
        bin.install "rightdocuments-linux-x86_64" => "rightdocuments"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rightdocuments --version")
  end
end
