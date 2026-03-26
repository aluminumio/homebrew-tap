class MailmateCli < Formula
  desc "CLI for MailMate — manage your physical mail from the terminal"
  homepage "https://github.com/Win-hhm/mailmate-cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Win-hhm/mailmate-cli/releases/download/v0.1.1/mailmate-macos-arm64"
      sha256 "5ee0cc47ba8fa7efbffe2323790133addad66fa0da2d09263b50308adfcbd728"

      def install
        bin.install "mailmate-macos-arm64" => "mailmate"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Win-hhm/mailmate-cli/releases/download/v0.1.1/mailmate-linux-x86_64"
      sha256 "73e662c32f23c47e53c09f9dc9a2024519e161bf55ec97f7eefed521df471929"

      def install
        bin.install "mailmate-linux-x86_64" => "mailmate"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mailmate --version")
  end
end
