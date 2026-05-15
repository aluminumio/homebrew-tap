class Rightimaged < Formula
  desc "CLI for the RightImaged DICOM imaging platform"
  homepage "https://github.com/aluminumio/rightimaged-cli"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aluminumio/rightimaged-cli/releases/download/v0.3.0/rightimaged-darwin-arm64"
      sha256 "fec7b015ae748b99a46ce077551ab82ad022b2178ff7e272cb7375125d08d700"

      def install
        bin.install "rightimaged-darwin-arm64" => "rightimaged"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aluminumio/rightimaged-cli/releases/download/v0.3.0/rightimaged-linux-amd64"
      sha256 "ccacc86d3b4cfbbdc05d02fb144450f4e809af1ab6c8480e65a9aa17a668eed6"

      def install
        bin.install "rightimaged-linux-amd64" => "rightimaged"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rightimaged --version")
  end
end
