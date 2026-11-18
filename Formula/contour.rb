class Contour < Formula
  desc "Device management configuration toolkit for Apple MDM, Fleet GitOps, and mSCP"
  homepage "https://github.com/macadmins/contour"
  version "0.5.1-beta.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/macadmins/contour/releases/download/v0.5.1-beta.1/contour-0.5.1-beta.1-macos-arm64.zip"
      sha256 "074263ac9f9b25814ab2e4cc4489fa3a741a3418cc04de1ff62f274f1146d235"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/macadmins/contour/releases/download/v0.5.1-beta.1/contour-0.5.1-beta.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "16cb8df810e7d42d2208326abb6985762c335280ca3f315ff735630dd8937d60"
    end
    on_intel do
      url "https://github.com/macadmins/contour/releases/download/v0.5.1-beta.1/contour-0.5.1-beta.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0b454914b96aeb0a0ff222eb286caa292a346b62cf75b44ca457b15c740f898b"
    end
  end

  def install
    bin.install "contour"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/contour --version")
  end
end
