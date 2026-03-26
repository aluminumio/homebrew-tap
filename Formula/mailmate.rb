class Mailmate < Formula
  desc "CLI for MailMate — manage your physical mail from the terminal"
  homepage "https://github.com/Win-hhm/mailmate-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Win-hhm/mailmate-cli/releases/download/v0.1.0/mailmate-macos-arm64"
      sha256 "687efd16ed761d37ee540c1c66db599896dea4a7c728a32f5fa4d6c4c9580ba6"

      def install
        bin.install "mailmate-macos-arm64" => "mailmate"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Win-hhm/mailmate-cli/releases/download/v0.1.0/mailmate-linux-x86_64"
      sha256 "cb6f30db9fe3a4b9d93b1696a6a753f07d59c9ce7d79566a1df06b115fed2b6a"

      def install
        bin.install "mailmate-linux-x86_64" => "mailmate"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mailmate --version")
  end
end
