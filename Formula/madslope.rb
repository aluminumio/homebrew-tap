class Madslope < Formula
  desc "Make 10-second video ads with MadSlope from a terminal"
  homepage "https://www.madslope.com"
  version "0.2.0"
  license "MIT"

  on_macos do
    # The macOS binary links /opt/homebrew/opt/openssl@3 dynamically.
    depends_on "openssl@3"

    on_arm do
      url "https://github.com/aluminumio/homebrew-tap/releases/download/madslope-v0.2.0/madslope-darwin-arm64"
      sha256 "3a62be48759514d343567b576d5fb668e024c1f384c71a60e18c1fd9d75053f0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/homebrew-tap/releases/download/madslope-v0.2.0/madslope-linux-amd64"
      sha256 "2f746a65c9ecd2ea70b1a2961cc359ef92c89d1c4cd5e4b99a5cdd9ff765089c"
    end
  end

  def install
    bin.install Dir["madslope-*"].first => "madslope"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/madslope --version")
  end
end
