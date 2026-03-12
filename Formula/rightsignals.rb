class Rightsignals < Formula
  desc "CLI for RightSignals — query traces, issues, occurrences and events"
  homepage "https://github.com/aluminumio/rightsignals-cli"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/rightsignals-cli/releases/download/v#{version}/rightsignals-darwin-arm64"
      sha256 "3ca8b1b6b0994f729977c836ce5fcf44b265ca07bf099dd8b3254c5d833d7802"

      def install
        bin.install "rightsignals-darwin-arm64" => "rightsignals"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/rightsignals-cli/releases/download/v#{version}/rightsignals-linux-amd64"
      sha256 "90efe10c26d5d5445ca74079fff2ec5c9a4d177a87284c9a88b3077c1ce9e476"

      def install
        bin.install "rightsignals-linux-amd64" => "rightsignals"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rightsignals version")
  end
end
