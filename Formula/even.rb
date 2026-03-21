class Even < Formula
  desc "CLI to send text to Even Realities G2 smart glasses over Bluetooth"
  homepage "https://github.com/aluminumio/even"
  url "https://github.com/aluminumio/even/releases/latest/download/even-macos.tar.gz"
  version "0.4.1"
  sha256 "b29356973c5e8dd68176ddfb5c6f49573eb55e03846017f04570b06583226623"
  license "MIT"

  depends_on :macos

  def install
    bin.install "even"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/even 2>&1", 2)
  end
end
