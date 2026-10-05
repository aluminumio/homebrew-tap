class Enbl < Formula
  desc "CLI for the Enable AI workforce platform"
  homepage "https://enable.io"
  version "0.13.0"
  license "MIT"

  on_macos do
    # The macOS binary links /opt/homebrew/opt/openssl@3 dynamically.
    depends_on "openssl@3"

    on_arm do
      url "https://github.com/aluminumio/homebrew-tap/releases/download/enbl-v0.13.0/enbl-darwin-arm64"
      sha256 "4878763fa246c9708a4b06de2fe5307f4b4f62d09513baaa3de44d86fe5f16f1"

      # enbl-bar: the session sync in the menu bar.
      resource "enbl-bar" do
        url "https://github.com/aluminumio/homebrew-tap/releases/download/enbl-v0.13.0/enbl-bar-darwin-arm64"
        sha256 "fc3a2a278857fc3336824d52fd3d877f867216e5e1809ab28e1b6f2e34820e19"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/homebrew-tap/releases/download/enbl-v0.13.0/enbl-linux-amd64"
      sha256 "d862b4930f48e70b3bb424381d549df1543c34d202a953073dca139577bb8c4c"
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
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/enbl --version")
  end
end
