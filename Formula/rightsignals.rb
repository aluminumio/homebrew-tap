class Rightsignals < Formula
  desc "CLI for RightSignals — query traces, issues, occurrences and events"
  homepage "https://github.com/aluminumio/rightsignals-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/rightsignals-cli/releases/download/v#{version}/rightsignals-darwin-arm64"
      sha256 "3ec29e7bdaf2c0f6ced53c83d46dd845f7a347e6def44e9ab8402b8b05a5ea31"

      def install
        bin.install "rightsignals-darwin-arm64" => "rightsignals"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/rightsignals-cli/releases/download/v#{version}/rightsignals-linux-amd64"
      sha256 "8b28747ac53b5147b14bfd8dcd140211ca3652fdb60ea27eadcd211a7ef17373"

      def install
        bin.install "rightsignals-linux-amd64" => "rightsignals"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rightsignals version")
  end
end
