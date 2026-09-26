class RightrankCli < Formula
  desc "AI model rankings, recommendations and pricing from RightRank"
  homepage "https://github.com/aluminumio/rightrank-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/rightrank-cli/releases/download/v0.1.0/rightrank-darwin-arm64"
      sha256 "bb0d5fb8210707b93e16e7cd5549c676c26c57840f332511c0429ef207e03ebf"

      def install
        bin.install "rightrank-darwin-arm64" => "rightrank"
      end
    end

    depends_on "bdw-gc"
    depends_on "openssl@3"
    depends_on "pcre2"
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/rightrank-cli/releases/download/v0.1.0/rightrank-linux-amd64"
      sha256 "ae4a77b64537ceae7fb4843514482ba86dcf02435cedeea676b0c005ceb16306"

      def install
        bin.install "rightrank-linux-amd64" => "rightrank"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rightrank --version")
  end
end
