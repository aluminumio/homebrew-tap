class Madslope < Formula
  desc "Make 10-second video ads with MadSlope from a terminal"
  homepage "https://www.madslope.com"
  version "0.1.0"
  license "MIT"

  on_macos do
    # The macOS binary links /opt/homebrew/opt/openssl@3 dynamically.
    depends_on "openssl@3"

    on_arm do
      url "https://github.com/aluminumio/homebrew-tap/releases/download/madslope-v0.1.0/madslope-darwin-arm64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/homebrew-tap/releases/download/madslope-v0.1.0/madslope-linux-amd64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install Dir["madslope-*"].first => "madslope"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/madslope --version")
  end
end
