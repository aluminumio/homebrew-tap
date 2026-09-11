class Rightdesk < Formula
  desc "CLI for the RightDesk API"
  homepage "https://github.com/aluminumio/rightdesk-cli"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/rightdesk-cli/releases/download/v0.1.0/rd-darwin-arm64"
      sha256 "86a8fd0ebf2d328577e946f9242e492b33b5a25361512f50f9dfc5df5a46c548"

      def install
        bin.install "rd-darwin-arm64" => "rd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/rightdesk-cli/releases/download/v0.1.0/rd-linux-x86_64"
      sha256 "8b88fbb6d62e08c160d3d62ad8dea7e91363894de707ab65d447e191eae3e675"

      def install
        bin.install "rd-linux-x86_64" => "rd"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rd --version")
  end
end
