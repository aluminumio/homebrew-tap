class Rightimaged < Formula
  desc "CLI for the RightImaged DICOM imaging platform"
  homepage "https://github.com/aluminumio/rightimaged-cli"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/rightimaged-cli/releases/download/v0.3.1/rightimaged-darwin-arm64"
      sha256 "d40c11ed29d79e8eb723ca004c268090d73e6aee4f06747137dc35ed6b90e986"

      def install
        bin.install "rightimaged-darwin-arm64" => "rightimaged"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/rightimaged-cli/releases/download/v0.3.1/rightimaged-linux-amd64"
      sha256 "43c1a211bf96a356e04c44e876ed7c4efda6c97a7973528c4b81d7399bce686e"

      def install
        bin.install "rightimaged-linux-amd64" => "rightimaged"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rightimaged --version")
  end
end
