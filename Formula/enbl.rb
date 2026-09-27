class Enbl < Formula
  desc "CLI for the Enable AI workforce platform"
  homepage "https://github.com/aluminumio/enable-cli"
  version "0.10.1"
  license "MIT"

  on_macos do
    # The macOS binary links /opt/homebrew/opt/openssl@3 dynamically.
    depends_on "openssl@3"

    on_arm do
      url "https://github.com/aluminumio/enable-cli/releases/download/v0.10.1/enbl-darwin-arm64"
      sha256 "dc762167b3ca1e1caaf7b6e82611415d51ccda8915484c9c78503a6318c140f0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/enable-cli/releases/download/v0.10.1/enbl-linux-amd64"
      sha256 "893d2ba82107881b79e0f5b0caa3e006fc5936cd33f76e14d00e81810d47bfc5"
    end
  end

  def install
    bin.install Dir["enbl-*"].first => "enbl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/enbl --version")
  end
end
