class Even < Formula
  desc "CLI to send text to Even Realities G2 smart glasses over Bluetooth"
  homepage "https://github.com/aluminumio/even"
  url "https://github.com/aluminumio/even/releases/latest/download/even-macos.tar.gz"
  version "0.2.1"
  sha256 "3e3c3059e74950e0508feadc68b2452284cfc499c4db08033b8879e3d9ba28ee"
  license "MIT"

  depends_on :macos

  def install
    bin.install "even"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/even 2>&1", 2)
  end
end
