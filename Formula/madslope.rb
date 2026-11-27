class Madslope < Formula
  desc "Make 10-second video ads with MadSlope from a terminal"
  homepage "https://www.madslope.com"
  version "0.4.0"
  license "MIT"

  on_macos do
    # The macOS binary links /opt/homebrew/opt/openssl@3 dynamically.
    depends_on "openssl@3"

    on_arm do
      url "https://github.com/aluminumio/homebrew-tap/releases/download/madslope-v0.4.0/madslope-darwin-arm64"
      sha256 "ea1940bd7e6a1837f62662e9afdfd284df9241450afc0a35d5c30f7a8c49a600"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/homebrew-tap/releases/download/madslope-v0.4.0/madslope-linux-amd64"
      sha256 "8ab6b24390650adba9d69e5f4d2385bd7962e1857d0ea28f14d389ea832e9927"
    end
  end

  def install
    bin.install Dir["madslope-*"].first => "madslope"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/madslope --version")
  end
end
