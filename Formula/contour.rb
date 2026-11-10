class Contour < Formula
  desc "Device management configuration toolkit for Apple MDM, Fleet GitOps, and mSCP"
  homepage "https://github.com/macadmins/contour"
  version "0.5.0-beta.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/macadmins/contour/releases/download/v0.5.0-beta.3/contour-0.5.0-beta.3-macos-arm64.zip"
      sha256 "cb268112b2adc62159f526de2ca21fce0254eba9919a7db900b2e4f110f618ae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/macadmins/contour/releases/download/v0.5.0-beta.3/contour-0.5.0-beta.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "81fbaac1a510cd2a850ce443fd47cd189963acbbf4e184656dca982a2f44f139"
    end
    on_intel do
      url "https://github.com/macadmins/contour/releases/download/v0.5.0-beta.3/contour-0.5.0-beta.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "721b0dbb0ed25d0ad7b991a1c56a4ae08b79ce6ca101135e0d017685677b32af"
    end
  end

  def install
    bin.install "contour"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/contour --version")
  end
end
