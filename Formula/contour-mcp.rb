class ContourMcp < Formula
  desc "Read-only MCP server exposing Contour to AI agents"
  homepage "https://github.com/macadmins/contour"
  version "0.5.0-beta.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/macadmins/contour/releases/download/v0.5.0-beta.3/contour-mcp-0.5.0-beta.3-macos-arm64.zip"
      sha256 "84662a1fd5da1a91d97b9129568f2f00a20e54db0e294d4b72c0b2eb72ae0752"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/macadmins/contour/releases/download/v0.5.0-beta.3/contour-mcp-0.5.0-beta.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b0ca933e831b9a22014ab91bf86fef8e92fde281514fa241b085edb422072d77"
    end
    on_intel do
      url "https://github.com/macadmins/contour/releases/download/v0.5.0-beta.3/contour-mcp-0.5.0-beta.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4582f4ad9ae96e1ad6b90b80677f6d3cde5e43dcd817b9d0dda721a47156f6aa"
    end
  end

  def install
    bin.install "contour-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/contour-mcp --version")
  end
end
