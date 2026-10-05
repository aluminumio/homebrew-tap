class Enbl < Formula
  desc "CLI for the Enable AI workforce platform"
  homepage "https://enable.io"
  version "0.15.1"
  license "MIT"

  on_macos do
    # The macOS binary links /opt/homebrew/opt/openssl@3 dynamically.
    depends_on "openssl@3"

    on_arm do
      url "https://github.com/aluminumio/homebrew-tap/releases/download/enbl-v0.15.1/enbl-darwin-arm64"
      sha256 "e0770d9761fbec002c979c1bfa8f236f01f499780a8cf669beb95a037f15eac7"

      # enbl-bar: the session sync in the menu bar.
      resource "enbl-bar" do
        url "https://github.com/aluminumio/homebrew-tap/releases/download/enbl-v0.15.1/enbl-bar-darwin-arm64"
        sha256 "8e729fc6c217bca05b4f6c587d48abad13e6f7f27a3a564a9482697360f22e76"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/homebrew-tap/releases/download/enbl-v0.15.1/enbl-linux-amd64"
      sha256 "aead9377f98ce61abf2a1f14784d0062f375d9fd41d90eaab4a23366bc7fb93b"
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
