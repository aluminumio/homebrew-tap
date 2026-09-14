class Rightdesk < Formula
  desc "CLI for the RightDesk API"
  homepage "https://github.com/aluminumio/rightdesk-cli"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/rightdesk-cli/releases/download/v0.2.0/rd-darwin-arm64"
      sha256 "41880f757a0bae4af1a20432cea5748213ce9256e181edfd5e2bcfaaf46879f9"

      def install
        bin.install "rd-darwin-arm64" => "rd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/rightdesk-cli/releases/download/v0.2.0/rd-linux-x86_64"
      sha256 "bb33adc594a45b5d8881b581bd60efb5b5ce69fbc09cb07512fb605bb1f5a4ae"

      def install
        bin.install "rd-linux-x86_64" => "rd"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rd --version")
  end
end
