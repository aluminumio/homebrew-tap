class MailmateCli < Formula
  desc "CLI for MailMate — manage your physical mail from the terminal"
  homepage "https://github.com/Win-hhm/mailmate-cli"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Win-hhm/mailmate-cli/releases/download/v0.1.2/mailmate-macos-arm64"
      sha256 "905db7dff3cacda620e856bc5a2c0a776e346cf1a44ff141318a030d37ae797b"

      def install
        bin.install "mailmate-macos-arm64" => "mailmate"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Win-hhm/mailmate-cli/releases/download/v0.1.2/mailmate-linux-x86_64"
      sha256 "04d381ddc3bbcf2b38d39ae7fde34f5ce35c15acb3b493c8c1322e47c47c9767"

      def install
        bin.install "mailmate-linux-x86_64" => "mailmate"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mailmate --version")
  end
end
