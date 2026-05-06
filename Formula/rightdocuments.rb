class Rightdocuments < Formula
  desc "CLI for the RightDocuments API"
  homepage "https://github.com/aluminumio/rightdocuments-cli"
  version "0.3.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.3.10/rightdocuments-darwin-arm64"
      sha256 "c40c301bed6397da946d068c5bf0aeec83f75e3af79f3e6df573e66e12e7035c"

      def install
        bin.install "rightdocuments-darwin-arm64" => "rightdocuments"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.3.10/rightdocuments-linux-x86_64"
      sha256 "4634f1a10d5a7be502a3f2956d8b5979cf11b7adb60655e861c31da82ac0b0a8"

      def install
        bin.install "rightdocuments-linux-x86_64" => "rightdocuments"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rightdocuments --version")
  end
end
