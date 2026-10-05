class Enbl < Formula
  desc "CLI for the Enable AI workforce platform"
  homepage "https://enable.io"
  version "0.14.1"
  license "MIT"

  on_macos do
    # The macOS binary links /opt/homebrew/opt/openssl@3 dynamically.
    depends_on "openssl@3"

    on_arm do
      url "https://github.com/aluminumio/homebrew-tap/releases/download/enbl-v0.14.1/enbl-darwin-arm64"
      sha256 "3acd915f9d80a4feef71c320b659874f90a3ff0b201a63eae6511338bab8d6af"

      # enbl-bar: the session sync in the menu bar.
      resource "enbl-bar" do
        url "https://github.com/aluminumio/homebrew-tap/releases/download/enbl-v0.14.1/enbl-bar-darwin-arm64"
        sha256 "8e729fc6c217bca05b4f6c587d48abad13e6f7f27a3a564a9482697360f22e76"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/homebrew-tap/releases/download/enbl-v0.14.1/enbl-linux-amd64"
      sha256 "59e5e0b4b023a6f9d35cb679e8da17a710ea01186f2c5c701ac8633a8a0aa3b7"
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
