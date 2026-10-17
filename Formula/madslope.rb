class Madslope < Formula
  desc "Make 10-second video ads with MadSlope from a terminal"
  homepage "https://www.madslope.com"
  version "0.3.0"
  license "MIT"

  on_macos do
    # The macOS binary links /opt/homebrew/opt/openssl@3 dynamically.
    depends_on "openssl@3"

    on_arm do
      url "https://github.com/aluminumio/homebrew-tap/releases/download/madslope-v0.3.0/madslope-darwin-arm64"
      sha256 "6ff45c7247a17f0cdc27f45d58b4511e80e9cb6b735157d002e044574f9b3c6b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/homebrew-tap/releases/download/madslope-v0.3.0/madslope-linux-amd64"
      sha256 "cdafa3fd0c807a717d4481acd8d287484d111bfe2ea196f28257305c8a82efaf"
    end
  end

  def install
    bin.install Dir["madslope-*"].first => "madslope"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/madslope --version")
  end
end
