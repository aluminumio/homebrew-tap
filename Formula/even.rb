class Even < Formula
  desc "CLI to send text to Even Realities G2 smart glasses over Bluetooth"
  homepage "https://github.com/aluminumio/even"
  url "https://github.com/aluminumio/even/releases/latest/download/even-macos.tar.gz"
  version "0.6.0"
  sha256 "0308be71c59aebd8633b9d681b6ffb44c84a4edf8c59020896fb1c701e657ead"
  license "MIT"

  depends_on :macos

  def install
    bin.install "even"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/even 2>&1", 2)
  end
end
