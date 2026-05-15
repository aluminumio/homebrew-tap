class Rightimaged < Formula
  desc "CLI for the RightImaged DICOM imaging platform"
  homepage "https://github.com/aluminumio/rightimaged-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/rightimaged-cli/releases/download/v0.2.0/rightimaged-darwin-arm64"
      sha256 "c00784c2372c212f77c5a4b4143aef76f82dd3d8904bc17f3c2fcf9a25784a4e"

      def install
        bin.install "rightimaged-darwin-arm64" => "rightimaged"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/rightimaged-cli/releases/download/v0.2.0/rightimaged-linux-amd64"
      sha256 "c720c4ecec40637ee9acd66934731b7760b7dc55b5d7e23f7febd0f5d1afbe74"

      def install
        bin.install "rightimaged-linux-amd64" => "rightimaged"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rightimaged --version")
  end
end
