class Even < Formula
  desc "CLI to send text to Even Realities G2 smart glasses over Bluetooth"
  homepage "https://github.com/aluminumio/even"
  url "https://github.com/aluminumio/even/releases/latest/download/even-macos.tar.gz"
  version "0.1.0"
  sha256 "fcd5f4b4851563369ee5905e02b861c856ec3d40535cec5771b14028a1deb4cf"
  license "MIT"

  depends_on :macos

  def install
    bin.install "even"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/even 2>&1", 2)
  end
end
