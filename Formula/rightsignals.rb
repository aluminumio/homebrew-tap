class Rightsignals < Formula
  desc "CLI for RightSignals — query traces, issues, occurrences and events"
  homepage "https://github.com/aluminumio/rightsignals-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/rightsignals-cli/releases/download/v#{version}/rightsignals-darwin-arm64"
      sha256 "PLACEHOLDER"

      def install
        bin.install "rightsignals-darwin-arm64" => "rightsignals"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/rightsignals-cli/releases/download/v#{version}/rightsignals-linux-amd64"
      sha256 "PLACEHOLDER"

      def install
        bin.install "rightsignals-linux-amd64" => "rightsignals"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rightsignals version")
  end
end
