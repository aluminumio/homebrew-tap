class Even < Formula
  desc "CLI to send text to Even Realities G2 smart glasses over Bluetooth"
  homepage "https://github.com/aluminumio/even"
  url "https://github.com/aluminumio/even/releases/latest/download/even-macos.tar.gz"
  version "0.4.0"
  sha256 "33586d2172ac275b21aeeb0e27c59f7e528a36fd7c61d1315931e90ad1984dfb"
  license "MIT"

  depends_on :macos

  def install
    bin.install "even"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/even 2>&1", 2)
  end
end
