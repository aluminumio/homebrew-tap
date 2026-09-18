class Rightdesk < Formula
  desc "CLI for the RightDesk API"
  homepage "https://github.com/aluminumio/rightdesk-cli"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/rightdesk-cli/releases/download/v0.3.0/rd-darwin-arm64"
      sha256 "bd95c0e25155f596c006256a3d987b6fe30f1eff9c9e1b5919cd88415191ef0c"

      def install
        bin.install "rd-darwin-arm64" => "rd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/rightdesk-cli/releases/download/v0.3.0/rd-linux-x86_64"
      sha256 "708bd642e2e28447dac4c206ca2c73e12b642551522d64529aa1bdfc5962c535"

      def install
        bin.install "rd-linux-x86_64" => "rd"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rd --version")
  end
end
