class Enbl < Formula
  desc "CLI for the Enable AI workforce platform"
  homepage "https://enable.io"
  version "0.12.0"
  license "MIT"

  on_macos do
    # The macOS binary links /opt/homebrew/opt/openssl@3 dynamically.
    depends_on "openssl@3"

    on_arm do
      url "https://github.com/aluminumio/homebrew-tap/releases/download/enbl-v0.12.0/enbl-darwin-arm64"
      sha256 "de068f8c9a4779e23aea2bfca6c47b61e20c202dee7faf2ecceb643d85e99800"

      # enbl-bar: the session sync in the menu bar.
      resource "enbl-bar" do
        url "https://github.com/aluminumio/homebrew-tap/releases/download/enbl-v0.12.0/enbl-bar-darwin-arm64"
        sha256 "394de2395d650e9f25daffd9b9b72b68a762bf8bd6cf7943ecff141466eb4a16"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/homebrew-tap/releases/download/enbl-v0.12.0/enbl-linux-amd64"
      sha256 "0f6456ba3d4320704d5f76f145e97bcc129ccda5887d28db944fd7d24b7646eb"
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
