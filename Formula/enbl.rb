class Enbl < Formula
  desc "CLI for the Enable AI workforce platform"
  homepage "https://enable.io"
  version "0.14.0"
  license "MIT"

  on_macos do
    # The macOS binary links /opt/homebrew/opt/openssl@3 dynamically.
    depends_on "openssl@3"

    on_arm do
      url "https://github.com/aluminumio/homebrew-tap/releases/download/enbl-v0.14.0/enbl-darwin-arm64"
      sha256 "5e9aee8fa8d70a210752f7d1c8b37bc09229fd93c5cab157c5d743a3444dc60d"

      # enbl-bar: the session sync in the menu bar.
      resource "enbl-bar" do
        url "https://github.com/aluminumio/homebrew-tap/releases/download/enbl-v0.14.0/enbl-bar-darwin-arm64"
        sha256 "fc3a2a278857fc3336824d52fd3d877f867216e5e1809ab28e1b6f2e34820e19"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/homebrew-tap/releases/download/enbl-v0.14.0/enbl-linux-amd64"
      sha256 "513f9d5c043caef2f0535071fcf6e4c2b24e61f642590ade819c7c5bb7b92ff4"
    end
  end

  def install
    bin.install Dir["enbl-*"].first => "enbl"
    resource("enbl-bar").stage { bin.install Dir["enbl-bar-*"].first => "enbl-bar" } if OS.mac?
  end

  # brew services start enbl: the menu bar app at every login (macOS).
  service do
    run opt_bin/"enbl-bar"
    keep_alive false
    # A crash or a refusal to start leaves its reason here.
    log_path var/"log/enbl-bar.log"
    error_log_path var/"log/enbl-bar.log"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/enbl --version")
  end
end
