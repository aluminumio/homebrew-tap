class Rightimaged < Formula
  desc "CLI for the RightImaged DICOM imaging platform"
  homepage "https://github.com/aluminumio/rightimaged-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/rightimaged-cli/releases/download/v0.1.0/rightimaged-darwin-arm64"
      sha256 "dd6bf3e0a72e110a51b6ffe56ac56716a8395d9cf9e708352bfac1540c42d5c0"

      def install
        bin.install "rightimaged-darwin-arm64" => "rightimaged"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/rightimaged-cli/releases/download/v0.1.0/rightimaged-linux-amd64"
      sha256 "6f8d15e8ad28d9462333c39941c1c2a222495c46255652d67314e5ef476d1dae"

      def install
        bin.install "rightimaged-linux-amd64" => "rightimaged"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rightimaged --version")
  end
end
