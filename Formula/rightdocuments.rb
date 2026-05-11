class Rightdocuments < Formula
  desc "CLI for the RightDocuments API"
  homepage "https://github.com/aluminumio/rightdocuments-cli"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.4.0/rightdocuments-darwin-arm64"
      sha256 "8790583efd857466f09f90b7d1dd3f13dc2b6e5b3b8f659857e025ea8bfdc17a"

      def install
        bin.install "rightdocuments-darwin-arm64" => "rightdocuments"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/rightdocuments-cli/releases/download/v0.4.0/rightdocuments-linux-x86_64"
      sha256 "ef0fd7deb19f6393cf7f62b93fc2e2d1b7282304a63c6650301bcd2e97237d16"

      def install
        bin.install "rightdocuments-linux-x86_64" => "rightdocuments"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rightdocuments --version")
  end
end
