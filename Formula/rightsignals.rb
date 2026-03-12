class Rightsignals < Formula
  desc "CLI for RightSignals — query traces, issues, occurrences and events"
  homepage "https://github.com/aluminumio/rightsignals-cli"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/rightsignals-cli/releases/download/v#{version}/rightsignals-darwin-arm64"
      sha256 "fce3f3ba507cabc0bbd4bfbb3aa022623f0515d87f5e72e38cfd83a0498beb5d"

      def install
        bin.install "rightsignals-darwin-arm64" => "rightsignals"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/rightsignals-cli/releases/download/v#{version}/rightsignals-linux-amd64"
      sha256 "3e169a2779d498613a391d7b066f50946d18377644a2aacff4088d54391eab14"

      def install
        bin.install "rightsignals-linux-amd64" => "rightsignals"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rightsignals version")
  end
end
