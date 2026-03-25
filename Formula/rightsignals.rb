class Rightsignals < Formula
  desc "CLI for RightSignals — query traces, issues, occurrences and events"
  homepage "https://github.com/aluminumio/rightsignals-cli"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/rightsignals-cli/releases/download/v0.5.0/rightsignals-darwin-arm64"
      sha256 "e5465b7c8bfba9913c4d84350f521aa5608fd34ab49dd05b279ebb6e496aee54"

      def install
        bin.install "rightsignals-darwin-arm64" => "rightsignals"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/rightsignals-cli/releases/download/v0.5.0/rightsignals-linux-amd64"
      sha256 "3dc692dee34d4fd58d50fda9da4c8ce8f6558bb4eb29714980f14cb9d2a6d6c4"

      def install
        bin.install "rightsignals-linux-amd64" => "rightsignals"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rightsignals version")
  end
end
