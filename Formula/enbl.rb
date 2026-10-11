class Enbl < Formula
  desc "CLI for the Enable AI workforce platform"
  homepage "https://enable.io"
  version "0.17.2"
  license "MIT"

  on_macos do
    # The macOS binary links /opt/homebrew/opt/openssl@3 dynamically.
    depends_on "openssl@3"

    on_arm do
      url "https://github.com/aluminumio/homebrew-tap/releases/download/enbl-v0.17.2/enbl-darwin-arm64"
      sha256 "988ebb958ca0d0589f0dc56424f87c6465402d3c177c8b8b5510e152eaa73f54"

      # enbl-bar: the session sync in the menu bar.
      resource "enbl-bar" do
        url "https://github.com/aluminumio/homebrew-tap/releases/download/enbl-v0.17.2/enbl-bar-darwin-arm64"
        sha256 "67d22fd1a788dc1bfd08a40dc976a78d1823dda57d6ef9241cc0b1b7e64ac5a2"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/homebrew-tap/releases/download/enbl-v0.17.2/enbl-linux-amd64"
      sha256 "f41d918b32f15319ee960760ba5efe2c770f1e8bbb6689fc4bcc58cbde20168b"
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
